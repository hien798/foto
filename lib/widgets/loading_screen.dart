import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widget.dart';

bool isShow = false;

class LoadingScreen extends StatelessWidget {
  static void close() {
    if (isShow) {
      isShow = false;
      pop();
    }
  }

  static Future<T?>? show<T>({
    Widget? title,
    Widget? content,
    List<Widget>? actions,
    bool? keepVisible,
  }) {
    if (isShow) return null;
    isShow = true;
    return showDialog(
      context: navigatorKey.currentContext!,
      builder: (context) => LoadingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
