import 'package:flutter/material.dart';

class UnFocus extends StatelessWidget {
  final Widget child;

  UnFocus({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (primaryFocus != null) primaryFocus!.unfocus();
      },
      child: child,
    );
  }
}

class DisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}