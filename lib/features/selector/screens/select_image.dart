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
                          child: Text('Camera'),
                          style: TextButton.styleFrom(
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
                          child: Text('Gallery'),
                          style: TextButton.styleFrom(
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

  void _navigate(String path) {
    Future.delayed(Duration(milliseconds: 500), () {
      pushReplacementNamed(EditorScreen.route, arguments: {'image': path});
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
