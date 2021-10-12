import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foto/bloc/bloc.dart';
import 'package:foto/features/feature.dart';
import 'package:foto/models/editor/editor.dart';
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
                            final path = await takePhoto();
                            if (!path.isNullOrEmpty) {
                              _navigate(context, path!);
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
                            final path = await pickImage();
                            if (!path.isNullOrEmpty) {
                              _navigate(context, path!);
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

  void _navigate(BuildContext context, String path) async {
    final now = DateTime.now();
    final EditorModel model = EditorModel(
      image: path,
      createTime: now,
      updateTime: now,
    );
    BlocProvider.of<ProjectCubit>(context).onAddProject(model);
    Future.delayed(Duration(milliseconds: 200), () {
      pushReplacementNamed(EditorScreen.route, arguments: {'model': model});
    });
  }
}
