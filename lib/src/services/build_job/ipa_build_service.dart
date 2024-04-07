import 'package:dart_firebase_admin/firestore.dart';
import 'package:openci_runner/src/services/firebase/firestore/firestore_path.dart';
import 'package:openci_runner/src/services/shell/ssh_shell_service.dart';
import 'package:openci_runner/src/services/vm_service.dart';

class IpaBuildService {
  IpaBuildService(this._sshShellService);
  final SSHShellService _sshShellService;

  // if (await iosJobController.importServiceAccountJson == false) {
  //   _logger.err('import service account json failed');
  //   continue;
  // }

  // if (await iosJobController.importAdhocExportOptionsPlist == false) {
  //   _logger.err('importAdhocExportOptionsPlist failed');
  //   continue;
  // }

  // if (await iosJobController.createAdhocCertificates == false) {
  //   _logger.err('createAdhocCertificates failed');
  //   continue;
  // }

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
