import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final Border? border;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;

  const BorderBox({
    Key? key,
    required this.child,
    this.border,
    this.borderRadius,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: padding ?? EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: border ??
            Border.all(
              width: 0.5,
              color: Theme.of(context).hintColor,
            ),
        borderRadius: borderRadius ?? BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
