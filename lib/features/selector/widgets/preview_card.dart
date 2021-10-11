import 'dart:io';
import 'dart:math';
import 'package:camerawesome/models/orientations.dart';
import 'package:flutter/material.dart';
import 'camera_orient_utils.dart';
import '../../../share/share.dart';

class PreviewCardWidget extends StatelessWidget {
  final String? lastPhotoPath;
  final Animation<Offset> previewAnimation;
  final ValueNotifier<CameraOrientations> orientation;
  final ValueChanged<String?>? onDone;
  final VoidCallback? onDismiss;

  const PreviewCardWidget({
    Key? key,
    this.lastPhotoPath,
    required this.previewAnimation,
    required this.orientation,
    this.onDone,
    this.onDismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Alignment alignment;
    bool mirror;
    switch (orientation.value) {
      case CameraOrientations.PORTRAIT_UP:
      case CameraOrientations.PORTRAIT_DOWN:
        alignment = orientation.value == CameraOrientations.PORTRAIT_UP
            ? Alignment.bottomLeft
            : Alignment.topLeft;
        mirror = orientation.value == CameraOrientations.PORTRAIT_DOWN;
        break;
      case CameraOrientations.LANDSCAPE_LEFT:
      case CameraOrientations.LANDSCAPE_RIGHT:
        alignment = Alignment.topLeft;
        mirror = orientation.value == CameraOrientations.LANDSCAPE_LEFT;
        break;
    }

    return Align(
      alignment: alignment,
      child: Padding(
        padding: OrientationUtils.isOnPortraitMode(orientation.value)
            ? EdgeInsets.symmetric(horizontal: 35.0, vertical: 140)
            : EdgeInsets.symmetric(vertical: 65.0),
        child: Transform.rotate(
          angle: OrientationUtils.convertOrientationToRadian(
            orientation.value,
          ),
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(mirror ? pi : 0.0),
            child: Dismissible(
              onDismissed: (direction) {},
              key: UniqueKey(),
              child: SlideTransition(
                position: previewAnimation,
                child: _buildPreviewPicture(reverseImage: mirror),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPreviewPicture({bool reverseImage = false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(2, 2),
                blurRadius: 25,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13.0),
              child: lastPhotoPath != null && lastPhotoPath!.isNotEmpty
                  ? Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(reverseImage ? pi : 0.0),
                child: Image.file(
                  File(lastPhotoPath!),
                  width:
                  OrientationUtils.isOnPortraitMode(orientation.value)
                      ? 128
                      : 256,
                ),
              )
                  : Container(
                width:
                OrientationUtils.isOnPortraitMode(orientation.value)
                    ? 128
                    : 256,
                height: 228,
                decoration: BoxDecoration(
                  color: Colors.black38,
                ),
                child: Center(
                  child: Icon(
                    Icons.photo,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => onDismiss?.call(),
              child: Icon(Icons.close),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                primary: Colors.red,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (!lastPhotoPath.isNullOrEmpty) {
                  onDone?.call(lastPhotoPath);
                }
              },
              child: Icon(Icons.check),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
