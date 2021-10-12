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

Future<void> copyToClipboard(String text) {
  final locale = AppLocalizations.of(navigatorKey.currentContext!);
  return Clipboard.setData(ClipboardData(text: text)).then((value) =>
      NotifySnackBar.showSuccess(message: '${locale?.text(UI.text_copied)}'));
}
