import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../locale/locale.dart';
import '../../../widgets/widget.dart';
import '../../../share/share.dart';

class CameraToolBar extends StatelessWidget {
  final Color? backgroundColor;
  final ValueChanged<String>? onPickImage;
  final ValueChanged<String>? onCapture;
  final VoidCallback? onFlipCamera;

  const CameraToolBar({
    Key? key,
    this.backgroundColor,
    this.onPickImage,
    this.onCapture,
    this.onFlipCamera,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _locale = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 148.0.h,
        width: double.infinity,
        color: backgroundColor ?? Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () => _pickImage(context),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.photo_size_select_actual_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                  SizedBox(height: 4),
                  Text(
                    _locale?.text(UI.text_gallery) ?? '',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
            Container(
              height: 60.0.w,
              width: 60.0.w,
              decoration: BoxDecoration(
                color: theme.hintColor,
                shape: BoxShape.circle,
              ),
              child: OutlinedButton(
                onPressed: () => _takePhoto(),
                child: Container(),
                clipBehavior: Clip.antiAlias,
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.white, width: 4.0),
                  primary: theme.buttonColor.withOpacity(0.12),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                onFlipCamera?.call();
              },
              child: Icon(
                Icons.flip_camera_android,
                color: Colors.white,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _pickImage(BuildContext context) async {
    try {
      final permission = await checkPermission(Permission.photos);
      if (!permission) return;
      final ImagePicker _picker = ImagePicker();
      final XFile? image = await _picker.pickImage(
        source: ImageSource.gallery,
        maxHeight: 540,
        maxWidth: 960,
        imageQuality: 50,
      );
      if (image != null) {
        final size = await image.length();
        if (size >= 1048576) {
          NotifyDialog.showErrors(title: 'Error', error: 'Image too large!');
        } else
          onPickImage?.call(image.path);
      }
    } catch (error) {
      NotifyDialog.showErrors(title: 'Error', error: error.toString());
    }
  }

  void _takePhoto() async {
    final Directory extDir = await getTemporaryDirectory();
    final testDir =
        await Directory('${extDir.path}/superlucky').create(recursive: true);
    final String filePath =
        '${testDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
    onCapture?.call(filePath);
  }
}
