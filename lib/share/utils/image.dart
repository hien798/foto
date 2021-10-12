import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foto/locale/locale.dart';
import 'package:foto/widgets/widget.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'permission.dart';

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

Future<Size> imageSize(String path) async {
  File file = File(path);
  var decodedImage = await decodeImageFromList(file.readAsBytesSync());
  return Size(decodedImage.width.toDouble(), decodedImage.height.toDouble());
}

Future<String?> pickImage() async {
  try {
    final permission = await checkPermission(Permission.photos);
    if (!permission) return null;
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 1600,
      maxWidth: 900,
      imageQuality: 100,
    );
    if (image != null) {
      final size = await image.length();
    }
    return image?.path;
  } catch (error) {
    NotifyDialog.showErrors(title: 'Error', error: error.toString());
  }
  return null;
}

Future<String?> takePhoto() async {
  try {
    final permission = await checkPermission(Permission.photos);
    if (!permission) return null;
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.front,
      maxHeight: 1600,
      maxWidth: 900,
      imageQuality: 100,
    );
    if (image != null) {
      final size = await image.length();
    }
    return image?.path;
  } catch (error) {
    NotifyDialog.showErrors(title: 'Error', error: error.toString());
  }
  return null;
}