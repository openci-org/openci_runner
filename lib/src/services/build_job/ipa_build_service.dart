import 'package:dartssh2/dartssh2.dart';
import 'package:openci_runner/src/features/user/domain/user_data.dart';
import 'package:openci_runner/src/services/macos/directory_paths.dart';
import 'package:openci_runner/src/services/shell/ssh_shell_service.dart';

class IpaBuildService {
  IpaBuildService(
    this._sshShellService,
    this._sshClient,
    this._jobId,
    this._workingVMName,
    this._appName,
  );
  final SSHShellService _sshShellService;
  final SSHClient _sshClient;
  final String _jobId;
  final String _workingVMName;
  final String _appName;

  Future<void> downloadExportOptionsPlist(
    String? downloadUrl,
  ) async {
    if (downloadUrl == null) {
      throw Exception('Download URL is required');
    }
    const fileName = 'openCIexportOptions.plist';

    await _sshShellService.executeCommand(
      'cd ~/Downloads/$_appName/ios/ && curl -L -o $fileName "$downloadUrl"',
      _sshClient,
      _jobId,
      _workingVMName,
    );
  }

  Future<void> createCertificateDirectory() async {
    await _sshShellService.executeCommand(
      'mkdir $certificateDirectory;',
      _sshClient,
      _jobId,
      _workingVMName,
    );
  }

  Future<void> downloadP12Certificate(
    String? downloadUrl,
  ) async {
    if (downloadUrl == null) {
      throw Exception('Download URL is required');
    }
    const fileName = 'build_certificate.p12';
    await _sshShellService.executeCommand(
      'cd $certificateDirectory && curl -L -o $fileName "$downloadUrl"',
      _sshClient,
      _jobId,
      _workingVMName,
    );
  }

  Future<void> downloadMobileProvisioningProfile(
    String? downloadUrl,
  ) async {
    if (downloadUrl == null) {
      throw Exception('Download URL is required');
    }
    const fileName = 'build_pp.mobileprovision';
    await _sshShellService.executeCommand(
      'cd $certificateDirectory && curl -L -o $fileName "$downloadUrl"',
      _sshClient,
      _jobId,
      _workingVMName,
    );
  }

  Future<void> importCertificates() async {
    const icloudKeychainPassword = 'mementomori';

    await _sshShellService.executeCommand(
      '''
cd ~/Downloads/certificates;
security create-keychain -p $icloudKeychainPassword $keychainPath;
security default-keychain -s $keychainPath;
security unlock-keychain -p $icloudKeychainPassword $keychainPath;
security set-keychain-settings -lut 21600 $keychainPath;
security import $p12 -P $icloudKeychainPassword -A -t cert -f pkcs12 -k $keychainPath;
security list-keychain -d user -s $keychainPath;
mkdir -p ~/Library/MobileDevice/Provisioning\\ Profiles;
cp $mobileprovisionPath ~/Library/MobileDevice/Provisioning\\ Profiles;
''',
      _sshClient,
      _jobId,
      _workingVMName,
    );
  }

  Future<void> runCustomScripts() async {
    await _sshShellService.executeCommand(
      '''
source ~/.zshrc;
cd Downloads/$_appName;
flutter pub get;
cd ios;
rm -rf Pods;
pod --version;
pod repo update;
pod install;
''',
      _sshClient,
      _jobId,
      _workingVMName,
    );
  }

  Future<void> buildIpa(
    int iosBuildNumber,
    Flavor flavor,
  ) async {
    var command = '';
    switch (flavor) {
      case Flavor.none:
        command =
            'source ~/.zshrc && cd ~/Downloads/$_appName && flutter build ipa --build-number=$iosBuildNumber --export-options-plist=ios/openCIexportOptions.plist;';
      default:
        throw Exception('Flavor must be specified');
    }
    await _sshShellService.executeCommand(
      command,
      _sshClient,
      _jobId,
      _workingVMName,
    );
  }

  Future<String> ipaPath() async {
    final result = await _sshShellService.executeCommand(
      'find "/Users/admin/Downloads/$_appName/build/ios/ipa" -type f -name "*.ipa"',
      _sshClient,
      _jobId,
      _workingVMName,
    );
    final filePath = result.sessionResult.sessionStdout;
    return filePath.replaceAll('\n', '');
  }

  Future<void> uploadIpaToFirebaseAppDistribution(
    String? firebaseAppIdIos,
    List<String>? iosTesterGroups,
  ) async {
    if (firebaseAppIdIos == null) {
      throw Exception('Firebase App ID is required');
    }
    if (iosTesterGroups == null) {
      throw Exception('iOS tester groups are required');
    }
    final path = await ipaPath();

    await _sshShellService.executeCommand(
      """
source ~/.zshrc && cd ~/Downloads/$_appName;
export GOOGLE_APPLICATION_CREDENTIALS="/Users/admin/Downloads/$_appName/service_account.json";
firebase appdistribution:distribute "$path" --app "$firebaseAppIdIos" --groups "${iosTesterGroups.join(', ')}"; 
""",
      _sshClient,
      _jobId,
      _workingVMName,
    );
  }

  // if (await iosJobController.createAdhocMobileProvisioningProfile ==
  //     false) {
  //   _logger.err('createAdhocMobileProvisioningProfile failed');
  //   continue;
  // }

  // if (await iosJobController.importCertificates == false) {
  //   _logger.err('importCertificates failed');
  //   continue;
  // }
  // if (await iosJobController.importP8 == false) {
  //   _logger.err('importP8 failed');
  //   continue;
  // }
}
