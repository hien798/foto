import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Widget? child;
  final String? title;
  final double height;
  final double borderRadius;
  final VoidCallback? onPressed;

  const GradientButton({
    Key? key,
    this.child,
    this.title,
    this.height = 44,
    this.borderRadius = 8.0,
    this.onPressed,
  })  : assert((child == null && title != null) ||
      (child != null && title == null)),
        assert(borderRadius >= 0 && height > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xff3ebeb0),
              Color(0xff36bcbf),
              Color(0xff39b5d0),
            ],
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
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
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}