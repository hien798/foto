import '../utils/utils.dart';

extension SizeExtension on num {
  ///[ScreenUtil.setWidth]
  double get w => ScreenUtil().setWidth(this);

  ///[ScreenUtil.setHeight]
  double get h => ScreenUtil().setHeight(this);

  ///[ScreenUtil.scaleText]
  double get scaleText => ScreenUtil().setScaleText(this);
}