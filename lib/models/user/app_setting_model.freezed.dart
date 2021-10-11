// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSettingModel _$AppSettingModelFromJson(Map<String, dynamic> json) {
  return _AppSettingModel.fromJson(json);
}

/// @nodoc
class _$AppSettingModelTearOff {
  const _$AppSettingModelTearOff();

  _AppSettingModel call({String? locale, String? theme, String? font}) {
    return _AppSettingModel(
      locale: locale,
      theme: theme,
      font: font,
    );
  }

  AppSettingModel fromJson(Map<String, Object> json) {
    return AppSettingModel.fromJson(json);
  }
}

/// @nodoc
const $AppSettingModel = _$AppSettingModelTearOff();

/// @nodoc
mixin _$AppSettingModel {
  String? get locale => throw _privateConstructorUsedError;
  String? get theme => throw _privateConstructorUsedError;
  String? get font => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingModelCopyWith<AppSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingModelCopyWith<$Res> {
  factory $AppSettingModelCopyWith(
          AppSettingModel value, $Res Function(AppSettingModel) then) =
      _$AppSettingModelCopyWithImpl<$Res>;
  $Res call({String? locale, String? theme, String? font});
}

/// @nodoc
class _$AppSettingModelCopyWithImpl<$Res>
    implements $AppSettingModelCopyWith<$Res> {
  _$AppSettingModelCopyWithImpl(this._value, this._then);

  final AppSettingModel _value;
  // ignore: unused_field
  final $Res Function(AppSettingModel) _then;

  @override
  $Res call({
    Object? locale = freezed,
    Object? theme = freezed,
    Object? font = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      font: font == freezed
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AppSettingModelCopyWith<$Res>
    implements $AppSettingModelCopyWith<$Res> {
  factory _$AppSettingModelCopyWith(
          _AppSettingModel value, $Res Function(_AppSettingModel) then) =
      __$AppSettingModelCopyWithImpl<$Res>;
  @override
  $Res call({String? locale, String? theme, String? font});
}

/// @nodoc
class __$AppSettingModelCopyWithImpl<$Res>
    extends _$AppSettingModelCopyWithImpl<$Res>
    implements _$AppSettingModelCopyWith<$Res> {
  __$AppSettingModelCopyWithImpl(
      _AppSettingModel _value, $Res Function(_AppSettingModel) _then)
      : super(_value, (v) => _then(v as _AppSettingModel));

  @override
  _AppSettingModel get _value => super._value as _AppSettingModel;

  @override
  $Res call({
    Object? locale = freezed,
    Object? theme = freezed,
    Object? font = freezed,
  }) {
    return _then(_AppSettingModel(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      font: font == freezed
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppSettingModel implements _AppSettingModel {
  const _$_AppSettingModel({this.locale, this.theme, this.font});

  factory _$_AppSettingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AppSettingModelFromJson(json);

  @override
  final String? locale;
  @override
  final String? theme;
  @override
  final String? font;

  @override
  String toString() {
    return 'AppSettingModel(locale: $locale, theme: $theme, font: $font)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppSettingModel &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)) &&
            (identical(other.font, font) ||
                const DeepCollectionEquality().equals(other.font, font)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(theme) ^
      const DeepCollectionEquality().hash(font);

  @JsonKey(ignore: true)
  @override
  _$AppSettingModelCopyWith<_AppSettingModel> get copyWith =>
      __$AppSettingModelCopyWithImpl<_AppSettingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppSettingModelToJson(this);
  }
}

abstract class _AppSettingModel implements AppSettingModel {
  const factory _AppSettingModel(
      {String? locale, String? theme, String? font}) = _$_AppSettingModel;

  factory _AppSettingModel.fromJson(Map<String, dynamic> json) =
      _$_AppSettingModel.fromJson;

  @override
  String? get locale => throw _privateConstructorUsedError;
  @override
  String? get theme => throw _privateConstructorUsedError;
  @override
  String? get font => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppSettingModelCopyWith<_AppSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
