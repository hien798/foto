import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget? child;
  final String? title;
  final Color? color;
  final Color? disableColor;
  final Color? titleColor;
  final double height;
  final double borderRadius;
  final EdgeInsets? padding;
  final VoidCallback? onPressed;

  const AppButton({
    Key? key,
    this.child,
    this.title,
    this.color,
    this.disableColor,
    this.titleColor,
    this.height = 48,
    this.borderRadius = 10.0,
    this.padding = const EdgeInsets.all(0),
    this.onPressed,
  })  : assert((child == null && title != null) ||
            (child != null && title == null)),
        assert(borderRadius >= 0 && height > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: height,
      child: TextButton(
        onPressed: onPressed,
        child: Container(
          constraints: const BoxConstraints(
            minWidth: 88.0,
            minHeight: 36.0,
          ),
          alignment: Alignment.center,
          child: child != null
              ? child
              : Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.button?.copyWith(
                    color: titleColor ?? theme.accentColor,
                  ),
                ),
        ),
        style: TextButton.styleFrom(
          padding: padding,
          backgroundColor: onPressed != null
              ? (color ?? theme.buttonColor)
              : (disableColor ?? theme.hintColor),
          primary: Colors.black26,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
