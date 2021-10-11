import 'package:permission_handler/permission_handler.dart';
import '../../widgets/widget.dart';
import '../share.dart';

Future<bool> checkPermission(Permission permission) async {
  var status = await permission.status;
  if (!status.isGranted) {
    status = await permission.request();
  }
  if (status.isPermanentlyDenied || status.isRestricted || status.isLimited) {
    await NotifyDialog.showErrors(
        error: 'Super Lucky need to access you ${permission.title}!');
    await openAppSettings();
  }
  final rs = await permission.status;
  return rs.isGranted;
}
