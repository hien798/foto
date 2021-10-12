import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foto/share/share.dart';
import '../../locale/locale.dart';
import '../widget.dart';

class TextInputDialog extends StatelessWidget {
  static Future<T?> show<T>({
    String? initialText,
    bool? keepVisible,
  }) =>
      showDialog(
        context: navigatorKey.currentContext!,
        builder: (context) => TextInputDialog(
          initialText: initialText,
          keepVisible: keepVisible,
        ),
      );

  final String? initialText;
  final bool? keepVisible;
  final _textController = TextEditingController();

  TextInputDialog({
    Key? key,
    this.initialText,
    this.keepVisible = false,
  }) : super(key: key) {
    if (initialText != null) {
      _textController.value = TextEditingValue(
        text: initialText!,
        selection: TextSelection.collapsed(offset: initialText!.length),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: UnFocus(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            color: keepVisible != false ? Colors.transparent : null,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(32),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Container(
                    height: 220,
                    width: 300,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () => pop(),
                            icon: Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          'Edit Text',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextField(
                            controller: _textController,
                            autofocus: true,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Input Text',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: 120,
                          height: 40,
                          child: AppButton(
                            title: 'OK',
                            onPressed: () {
                              pop(_textController.text);
                            },
                          ),
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSticker({required String sticker, VoidCallback? onPressed}) {
    return TextButton(
      onPressed: () => onPressed?.call(),
      child: AppImage.asset(sticker),
    );
  }
}
