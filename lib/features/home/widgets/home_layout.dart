import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../widgets/widget.dart';

class HomeLayout extends StatelessWidget {
  final Widget header;
  final Widget child;

  HomeLayout({
    Key? key,
    required this.header,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: UnFocus(
        child: Scaffold(
          body: SingleChildScrollView(
            physics:
                ClampingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: child,
          ),
        ),
      ),
    );
  }
}
