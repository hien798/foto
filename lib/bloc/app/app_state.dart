import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/model.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({AppSettingModel? model}) = _AppState;
}
