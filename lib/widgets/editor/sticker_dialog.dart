import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foto/share/share.dart';
import '../../locale/locale.dart';
import '../widget.dart';

class StickerDialog extends StatelessWidget {
  static Future<T?> show<T>({
    bool? keepVisible,
  }) =>
      showDialog(
        context: navigatorKey.currentContext!,
        builder: (context) => StickerDialog(
          keepVisible: keepVisible,
        ),
      );

  final bool? keepVisible;

  StickerDialog({
    Key? key,
    this.keepVisible = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
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
                color: Colors.black38,
              ),
              child: Container(
                height: 500,
                width: 300,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () => pop(),
                        icon: Icon(Icons.close),
                      ),
                    ),
                    Text(
                      'Select Sticker',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 16),
                    Expanded(
                      child: GridView.count(
                        padding: EdgeInsets.all(16),
                        crossAxisCount: 2,
                        children: List.generate(
                          Sticker.stickers.length,
                          (index) {
                            return _buildSticker(
                              sticker: Sticker.stickers[index],
                              onPressed: () {
                                pop(Sticker.stickers[index]);
                              },
                            );
                          },
                        ),
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
    );
  }

  Widget _buildSticker({required String sticker, VoidCallback? onPressed}) {
    return TextButton(
      onPressed: () => onPressed?.call(),
      child: AppImage.asset(sticker),
    );
  }
}
