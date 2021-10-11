import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../resources/resource.dart';

enum AppImageType { asset, network }

class AppImage extends StatelessWidget {
  static AppImage asset(
    String? path, {
    Color? color,
    double? width,
    double? height,
    BoxFit? fit,
    Alignment? alignment,
  }) =>
      AppImage(
        path,
        type: AppImageType.asset,
        color: color,
        fit: fit,
        width: width,
        height: height,
        alignment: alignment ?? Alignment.center,
      );

  static AppImage network(
    String? path, {
    Color? color,
    double? width,
    double? height,
    BoxFit? fit,
    Alignment? alignment,
  }) =>
      AppImage(
        path,
        type: AppImageType.network,
        color: color,
        fit: fit,
        width: width,
        height: height,
        alignment: alignment ?? Alignment.center,
      );

  final String? path;
  final AppImageType type;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const AppImage(
    this.path, {
    Key? key,
    this.type = AppImageType.asset,
    this.color,
    this.width,
    this.height,
    this.fit,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (path == null) return _buildError();
    return type == AppImageType.asset
        ? Image.asset(
            path!.trim(),
            color: color,
            fit: fit,
            width: width,
            height: height,
            alignment: alignment ?? Alignment.center,
          )
        : CachedNetworkImage(
            imageUrl: path!.trim(),
            color: color,
            fit: fit,
            width: width,
            height: height,
            alignment: alignment ?? Alignment.center,
            placeholder: (context, _) => _buildPlaceholder(),
            errorWidget: (context, _, __) => _buildError(),
          );
  }

  Widget _buildPlaceholder() {
    return Container(
      width: width,
      height: height,
      child: Image.asset(
        Images.icon,
        fit: fit,
        alignment: alignment ?? Alignment.center,
      ),
    );
  }

  Widget _buildError() {
    return Container(
      color: Colors.grey,
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: Container(
        width: width,
        height: height,
        child: Image.asset(
          Images.icon,
          fit: fit,
          alignment: alignment ?? Alignment.center,
        ),
      ),
    );
  }
}
