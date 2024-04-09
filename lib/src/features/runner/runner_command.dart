import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:dart_firebase_admin/firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:mason_logger/mason_logger.dart';
import 'package:openci_runner/src/services/build_job/flutter_version_manager.dart';
import 'package:openci_runner/src/services/build_job/ipa_build_service.dart';
import 'package:openci_runner/src/services/build_job/organization/organization_model.dart';
import 'package:process_run/shell.dart';
import 'package:sentry/sentry.dart';

import 'package:openci_runner/src/features/job/domain/job_data.dart';
import 'package:openci_runner/src/features/job/domain/job_data_v2.dart';
import 'package:openci_runner/src/features/vm/controller/vm_controller.dart';
import 'package:openci_runner/src/services/build_job/build_utility_service.dart';
import 'package:openci_runner/src/services/build_job/workflow/workflow_model.dart';
import 'package:openci_runner/src/services/firebase/firestore/firestore_path.dart';
import 'package:openci_runner/src/services/log/log_service.dart';
import 'package:openci_runner/src/services/shell/local_shell_service.dart';
import 'package:openci_runner/src/services/shell/ssh_shell_service.dart';
import 'package:openci_runner/src/services/ssh/ssh_service.dart';
import 'package:openci_runner/src/services/tart/tart_service.dart';
import 'package:openci_runner/src/services/uuid/uuid_service.dart';
import 'package:openci_runner/src/services/vm_service.dart';

Future<String> getInstallationToken(
  int appId,
  String privateKey,
  int installationId,
) async {
  const url = 'https://getinstallationtoken-wvluvdjkzq-uc.a.run.app';

  final response = await http.post(
    Uri.parse(url),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'appId': appId,
      'privateKey': privateKey,
      'installationId': installationId,
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    return data['installationToken'] as String;
  } else {
    throw Exception(
      'Failed to get installation token. Status code: ${response.statusCode}',
    );
  }
}

class AppConfig {
  AppConfig({
    required this.firebaseProjectName,
    required this.firebaseServiceAccountJson,
    required this.pem,
  });
  final String firebaseProjectName;
  final String firebaseServiceAccountJson;
  final String pem;
}

const jobsPath = 'jobs_v3';

bool shouldExit = false;

class RunnerCommand extends Command<int> {
  RunnerCommand({
    required Logger logger,
  }) : _logger = logger {
    argParser
      ..addOption(
        'firebaseProjectName',
        help: 'Firebase Project Name',
        abbr: 'p',
      )
      ..addOption(
        'firebaseServiceAccountJson',
        help: 'Firebase Service Account Json file Path',
        abbr: 's',
      )
      ..addOption(
        'sentryDSN',
        help: "Sentry's DSN",
        abbr: 'd',
      )
      ..addOption(
        'pemFilePath',
        help: 'pem file path',
        abbr: 'f',
      );
  }

  Future<AppConfig> initializeApp(ArgResults? argResults) async {
    if (argResults == null) {
      throw Exception('ArgResults is null');
    }
    final firebaseProjectName = argResults['firebaseProjectName'] as String;
    final firebaseServiceAccountJson =
        argResults['firebaseServiceAccountJson'] as String;
    final sentryDSN = argResults['sentryDSN'] as String?;
    final pem = argResults['pemFilePath'] as String;

    await initializeSentry(sentryDSN);
    validateFirebaseProjectName(firebaseProjectName);
    validateFirebaseServiceAccountJson(firebaseServiceAccountJson);

    return AppConfig(
      firebaseProjectName: firebaseProjectName,
      firebaseServiceAccountJson: firebaseServiceAccountJson,
      pem: pem,
    );
  }

  Future<void> initializeSentry(String? sentryDSN) async {
    if (sentryDSN != null) {
      await Sentry.init((options) {
        options
          ..dsn = sentryDSN
          ..tracesSampleRate = 1.0;
      });
    }
  }

  void validateFirebaseProjectName(String firebaseProjectName) {
    if (firebaseProjectName.isEmpty) {
      _logger.err('firebaseProjectName is required');
      throw Exception('firebaseProjectName is required');
    }
  }

  void validateFirebaseServiceAccountJson(String firebaseServiceAccountJson) {
    if (firebaseServiceAccountJson.isEmpty) {
      _logger.err('firebaseServiceAccountJson is required');
      throw Exception('firebaseServiceAccountJson is required');
    }
  }

  @override
  String get description => 'Open CI core command';

  @override
  String get name => 'run';

  final Logger _logger;

  @override
  Future<int> run() async {
    GetIt.instance.registerSingleton<Logger>(Logger());

    final appConfig = await initializeApp(argResults);
    _logger.success('Argument check passed.');

    final admin = FirebaseAdminApp.initializeApp(
      appConfig.firebaseProjectName,
      Credential.fromServiceAccount(
        File(appConfig.firebaseServiceAccountJson),
      ),
    );

    final firestore = Firestore(
      admin,
    );

    var isSearching = false;

    Progress? progress;

    ProcessSignal.sigterm.watch().listen((signal) {
      _logger.warn('Received SIGTERM. Terminating the CLI...');
    });

    ProcessSignal.sigint.watch().listen((signal) {
      _logger.warn('Received SIGINT. Terminating the CLI...');
      shouldExit = true;
      exit(0);
    });

    while (!shouldExit) {
      try {
        if (isSearching == false) {
          _logger.info('Searching new job');
          progress = _logger.progress('Searching new job');

          isSearching = true;
        }

        final jobsQs = await firestore
            .collection(jobsPath)
            .where('buildStatus.processing', WhereFilter.equal, false)
            .where('buildStatus.success', WhereFilter.equal, false)
            .where('buildStatus.failure', WhereFilter.equal, false)
            .orderBy('createdAt', descending: true)
            .get();

        if (jobsQs.docs.isEmpty && progress != null) {
          progress.update('No jobs were found');

          await Future<void>.delayed(const Duration(seconds: 10));
          continue;
        }

        progress!.complete('New job found');
        isSearching = false;
        final jobsData = jobsQs.docs.first.data();
        final buildJob = BuildModel.fromJson(jobsData);
        final jobId = buildJob.documentId;
        final targetPlatform = buildJob.platform;
        _logger.info('targetPlatform: $targetPlatform');

        final workflowDocs = await firestore
            .collection(FirestorePath.workflowDomain)
            .doc(buildJob.workflowId)
            .get();

        final workflowData = workflowDocs.data();
        if (workflowData == null) {
          throw Exception('Workflow data is null for job: $jobId');
        }
        final workflow = WorkflowModel.fromJson(workflowData);

        // prepare service classes
        final localShellService = LocalShellService();
        final tartService = TartService(localShellService);
        final vmService = VMService(tartService);
        final buildUtilityService = BuildUtilityService(firestore, vmService);

        await buildUtilityService.markBuildAsStarted(jobId);

        final privateKeyFile = File(appConfig.pem);
        final privateKey = await privateKeyFile.readAsString();

        final tokenId = await getInstallationToken(
          buildJob.github.appId,
          privateKey,
          buildJob.github.installationId,
        );

        final vmId = UuidService.generateV4();
        final vm = VMController(vmId, tartService);
        await vm.cleanupVMs;
        await vm.cloneVM;
        unawaited(vm.launchVM);
        while (true) {
          final shell = Shell();
          List<ProcessResult>? result;
          try {
            result = await shell.run('tart ip $vmId');
          } catch (e) {
            result = null;
          }
          if (result != null) {
            break;
          }
          await Future<void>.delayed(const Duration(seconds: 1));
        }
        _logger.success('VM is ready');
        final vmIP = await vm.fetchIpAddress;
        final logService = LogService(firestore);

        final sshService = SSHService(logService, buildUtilityService);

        final sshClient = await sshService.sshToServer(vmIP);
        if (sshClient == null) {
          throw Exception('ssh client is null');
        }
        final sshShellService = SSHShellService(sshService);
        final appName = buildJob.github.repositoryName;

        final organizationDocs = await firestore
            .collection('organizations')
            .doc(workflow.organizationId)
            .get();
        final organizationData = organizationDocs.data();
        if (organizationData == null) {
          throw Exception(
            'organizationData is null: ${workflow.organizationId}',
          );
        }
        final organization = OrganizationModel.fromJson(organizationData);

        if (targetPlatform == TargetPlatform.android) {
          // final androidJobController = AndroidJobController(
          //   sshService: ssh,
          //   sshClient: sshClient,
          //   gitHubService: GitHubService(),
          //   firestore: firestore,
          //   vmController: vm,
          // );

          // if (await androidJobController.cloneRepository == false) {
          //   _logger.err('clone repository failed');
          //   continue;
          // }

          // if (await androidJobController.importServiceAccountJson == false) {
          //   _logger.err('import service account json failed');
          //   continue;
          // }

          // if (await androidJobController.importKeyJks == false) {
          //   _logger.err('import key jks failed');
          //   continue;
          // }

          // if (await androidJobController.importKeyProperties == false) {
          //   _logger.err('import key properties failed');
          //   continue;
          // }

          // if (await androidJobController.changeFlutterVersion == false) {
          //   _logger.err('changeFlutterVersion failed');
          //   continue;
          // }

          // if (await androidJobController.checkFlutterVersion == false) {
          //   _logger.err('checkFlutterVersion failed');
          //   continue;
          // }

          // if (await androidJobController.flutterClean == false) {
          //   _logger.err('flutter clean failed');
          //   continue;
          // }

          // if (await androidJobController.buildApk == false) {
          //   _logger.err('build apk failed');
          //   continue;
          // }

          // if (await androidJobController.uploadApkToFAD == false) {
          //   _logger.err('upload apk failed');
          //   continue;
          // }

          // await firestore
          //     .collection('users')
          //     .doc(user.userId)
          //     .update({'androidBuildNumber': user.androidBuildNumber + 1});

          // await firestore
          //     .collection(jobsPath)
          //     .doc(job.documentId)
          //     .update({'success': true});

          // _logger.success('build success');

          // await vm.stopVM;
        } else if (targetPlatform == TargetPlatform.ios) {
          final ipaBuildService = IpaBuildService(
            sshShellService,
            sshClient,
            jobId,
            vm.workingVMName,
            appName,
          );
          await buildUtilityService.cloneRepository(
            sshShellService,
            sshClient,
            buildJob,
            jobId,
            vm.workingVMName,
            tokenId,
          );

          await ipaBuildService.downloadExportOptionsPlist(
            workflow.ios.exportOptions,
          );
          await ipaBuildService.createCertificateDirectory();
          await ipaBuildService.downloadP12Certificate(
            workflow.ios.p12,
          );
          await ipaBuildService.downloadMobileProvisioningProfile(
            workflow.ios.provisioningProfile,
          );
          await ipaBuildService.importCertificates();

          final flutterVersionManager = FlutterVersionManager(
            sshShellService,
            sshClient,
            jobId,
            vm.workingVMName,
            appName,
          );

          await flutterVersionManager
              .changeFlutterVersion(workflow.flutter.version);

          await ipaBuildService.runCustomScripts();

          // build phase
          await ipaBuildService.buildIpa(
            organization.buildNumber.ios,
            workflow.flutter.flavor,
          );
          _logger.success('ipa build success');

          // 以下はBuildDistributionServiceにした方がいいかも。
          // Prepare for distribution
          final distribution = workflow.distribution;

          switch (distribution) {
            case BuildDistributionChannel.firebaseAppDistribution:
              final serviceAccountJsonDownloadUrl =
                  workflow.firebase.serviceAccountJson;
              if (serviceAccountJsonDownloadUrl == null) {
                throw Exception('Service account json download url is null');
              }
              await buildUtilityService.importServiceAccountJson(
                appConfig.firebaseServiceAccountJson,
                sshShellService,
                sshClient,
                jobId,
                vm.workingVMName,
                appName,
                serviceAccountJsonDownloadUrl,
              );
              await ipaBuildService.uploadIpaToFirebaseAppDistribution(
                workflow.firebase.appIdIos,
                workflow.firebase.appDistribution.testerGroups,
              );
              _logger.success('upload build success');
            case BuildDistributionChannel.testFlight:
            // if (await iosJobController.importP8 == false) {
            //   _logger.err('importP8 failed');
            //   continue;
            // }
            // if (distribution.distribution == 'testFlight') {
            //   if (await iosJobController.uploadIpaToTestFlight == false) {
            //     _logger.err('uploadIpaToTestFlight failed');
            //     continue;
            //   }
            // }
            case BuildDistributionChannel.playStoreInternal:
            case BuildDistributionChannel.playStoreBeta:
          }

          await buildUtilityService.incrementBuildNumber(
            organization.documentId,
            organization.buildNumber,
            TargetPlatform.ios,
          );
          _logger.success('ios buildNumber update success');

          await buildUtilityService.markJobAsSuccess(jobId);
          _logger.success('whole build process completed');

          await vm.stopVM;
        }
      } catch (e, s) {
        _logger
          ..err('CLI crashed: $e')
          ..err('StackTrace: $s');

        await Sentry.captureException(
          e,
          stackTrace: s,
        );

        await Future<void>.delayed(const Duration(seconds: 2));

        _logger.warn('Restarting the CLI...');
        continue;
      }
    }
    exit(0);
  }
}
