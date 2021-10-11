import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foto/features/feature.dart';
import 'package:foto/share/share.dart';
import 'package:foto/widgets/widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class SelectImageScreen extends StatelessWidget {
  static const route = 'select_image';

  const SelectImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      style: LayoutStyle.light,
      child: Column(
        children: [
          CommonAppBar(title: 'Choose image'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: TextButton(
                          onPressed: () async {
                            final path = await _takePhoto();
                            if (!path.isNullOrEmpty) {
                              _navigate(path!);
                            }
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt),
                              SizedBox(height: 8),
                              Text('Camera'),
                            ],
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: TextButton(
                          onPressed: () async {
                            final path = await _pickImage();
                            if (!path.isNullOrEmpty) {
                              _navigate(path!);
                            }
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.photo_library_sharp),
                              SizedBox(height: 8),
                              Text('Gallery'),
                            ],
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigate(String path) async {
    File file = File(path);
    var decodedImage = await decodeImageFromList(file.readAsBytesSync());
    final size =
        Size(decodedImage.width.toDouble(), decodedImage.height.toDouble());
    Future.delayed(Duration(milliseconds: 500), () {
      pushReplacementNamed(EditorScreen.route,
          arguments: {'image': path, 'size': size});
    });
  }

  Future<String?> _pickImage() async {
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
        /** Check image size
            if (size >= 1048576) {
            NotifyDialog.showErrors(title: 'Error', error: 'Image too large!');
            } else {}
         **/
      }
      return image?.path;
    } catch (error) {
      NotifyDialog.showErrors(title: 'Error', error: error.toString());
    }
    return null;
  }

  Future<String?> _takePhoto() async {
    final rs = await pushNamed(CameraScreen.route);
    return rs as String?;
  }
}
