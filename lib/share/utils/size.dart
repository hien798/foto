import 'dart:math';

import 'package:flutter/material.dart';
import '../../widgets/widget.dart';

class ScreenUtil {
  static const Size defaultSize = Size(375, 812);
  static late ScreenUtil _instance;

  late Size uiSize = defaultSize;
  late double _screenWidth;
  late double _screenHeight;

  ScreenUtil._();

  factory ScreenUtil() {
    return _instance = ScreenUtil._()
      ..uiSize = MediaQuery.of(navigatorKey.currentContext!).size;
  }

  static void init() {
    _instance = ScreenUtil._()
      ..uiSize = MediaQuery.of(navigatorKey.currentContext!).size;
  }

  double get screenWidth => _screenWidth;

  double get screenHeight => _screenHeight;

  double get scaleWidth => uiSize.width / defaultSize.width;

  double get scaleHeight => uiSize.height / defaultSize.height;

  double get scaleText => min(scaleWidth, scaleHeight);

  double setWidth(num width) => width * scaleWidth;

  double setHeight(num height) => height * scaleHeight;

  double setScaleText(num size) => size * scaleText;
}
