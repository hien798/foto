import 'dart:typed_data';
import 'dart:ui';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../share/share.dart';
import '../../locale/locale.dart';
import '../../widgets/widget.dart';

Future<File?> urlToFile(String url) async {
  if (url.isEmpty) return null;
  try {
    final Directory directory = await getApplicationDocumentsDirectory();
    final String filePath =
        '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.png';
    final http.Response response = await http.get(Uri.parse(url));
    final File file = File(filePath);
    await file.writeAsBytes(response.bodyBytes);
    return file;
  } catch (error) {
    return null;
  }
}

Future<void> captureAndSavePng({
  required GlobalKey key,
  String? name,
  int? quality,
}) async {
  final locale = AppLocalizations.of(navigatorKey.currentContext!);
  final _quality = (quality ?? 0) > 0 ? quality! : 100;
  try {
    RenderRepaintBoundary? boundary =
        key.currentContext?.findRenderObject() as RenderRepaintBoundary;
    var image = await boundary.toImage();
    ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
    Uint8List? pngBytes = byteData?.buffer.asUint8List();
    if (pngBytes == null) return;
    final now = DateTime.now().millisecondsSinceEpoch;
    final ios = Platform.isIOS;
    final isGranted =
        await checkPermission(ios ? Permission.photos : Permission.storage);
    if (!isGranted) return;
    final result = await ImageGallerySaver.saveImage(pngBytes,
        quality: _quality, name: name ?? "foto_$now");
    print('captureAndSavePng: $result');
    if (result['isSuccess'] == true) {
      NotifySnackBar.showSuccess(message: '${locale?.text(UI.text_saved)}');
    }
  } catch (e) {
    print(e.toString());
  }
}

Future<void> copyToClipboard(String text) {
  final locale = AppLocalizations.of(navigatorKey.currentContext!);
  return Clipboard.setData(ClipboardData(text: text)).then((value) =>
      NotifySnackBar.showSuccess(message: '${locale?.text(UI.text_copied)}'));
}
