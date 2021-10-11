import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final String image;
  final Color? color;
  final double? size;

  const AppIcon(this.image, {Key? key, this.color, this.size})
      : super(key: key);

  AppIcon copyWith({String? image, Color? color, double? size}) {
    return AppIcon(
      image ?? this.image,
      color: color ?? this.color,
      size: size ?? this.size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(image),
      color: color ?? Theme.of(context).accentColor,
      size: size ?? 18.0,
    );
  }
}