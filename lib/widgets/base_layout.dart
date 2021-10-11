import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../widgets/widget.dart';

enum LayoutStyle { light, dark }

extension LayouStyleEx on LayoutStyle? {
  SystemUiOverlayStyle get systemUiOverlayStyle {
    switch (this) {
      case LayoutStyle.dark:
        return SystemUiOverlayStyle.dark;
      case LayoutStyle.light:
      default:
        return SystemUiOverlayStyle.light;
    }
  }
}

class BaseLayout extends StatelessWidget {
  final Widget child;
  final LayoutStyle? style;

  BaseLayout({
    Key? key,
    required this.child,
    this.style = LayoutStyle.dark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: style.systemUiOverlayStyle,
      child: UnFocus(
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: child,
        ),
      ),
    );
  }
}
