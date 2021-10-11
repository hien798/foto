import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget.dart';

bool _notifySnackBarShow = false;

class NotifySnackBar extends StatelessWidget {
  static Future<T?> show<T>({
    required Widget content,
    bool? keepVisible,
  }) =>
      showDialog(
        context: navigatorKey.currentContext!,
        builder: (context) => NotifySnackBar(
          content: content,
          keepVisible: keepVisible,
        ),
      );

  static Future<T?> showSuccess<T>({
    String? message,
    bool? keepVisible,
  }) =>
      showDialog(
        context: navigatorKey.currentContext!,
        builder: (context) => NotifySnackBar(
          content: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            padding: EdgeInsets.all(24),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black54,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: 54,
                ),
                SizedBox(height: 16),
                Text(
                  message ?? '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          keepVisible: keepVisible,
        ),
      );

  final Widget content;
  final bool? keepVisible;

  NotifySnackBar({
    Key? key,
    required this.content,
    this.keepVisible = false,
  }) : super(key: key) {
    _notifySnackBarShow = true;
    Future.delayed(Duration(milliseconds: 1000), () {
      if (_notifySnackBarShow == true) {
        _notifySnackBarShow = false;
        pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: WillPopScope(
        onWillPop: () async {
          if (_notifySnackBarShow == true) {
            _notifySnackBarShow = false;
            pop();
          }
          return false;
        },
        child: Container(
          color: keepVisible != false ? Colors.transparent : null,
          alignment: Alignment.center,
          child: content,
        ),
      ),
    );
  }
}
