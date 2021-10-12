// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'scale_offset_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScaleOffsetModel _$ScaleOffsetModelFromJson(Map<String, dynamic> json) {
  return _ScaleOffsetModel.fromJson(json);
}

/// @nodoc
class _$ScaleOffsetModelTearOff {
  const _$ScaleOffsetModelTearOff();

  _ScaleOffsetModel call(
      {required double scale, required double dx, required double dy}) {
    return _ScaleOffsetModel(
      scale: scale,
      dx: dx,
      dy: dy,
    );
  }

  ScaleOffsetModel fromJson(Map<String, Object> json) {
    return ScaleOffsetModel.fromJson(json);
  }
}

/// @nodoc
const $ScaleOffsetModel = _$ScaleOffsetModelTearOff();

/// @nodoc
mixin _$ScaleOffsetModel {
  double get scale => throw _privateConstructorUsedError;
  double get dx => throw _privateConstructorUsedError;
  double get dy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScaleOffsetModelCopyWith<ScaleOffsetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScaleOffsetModelCopyWith<$Res> {
  factory $ScaleOffsetModelCopyWith(
          ScaleOffsetModel value, $Res Function(ScaleOffsetModel) then) =
      _$ScaleOffsetModelCopyWithImpl<$Res>;
  $Res call({double scale, double dx, double dy});
}

/// @nodoc
class _$ScaleOffsetModelCopyWithImpl<$Res>
    implements $ScaleOffsetModelCopyWith<$Res> {
  _$ScaleOffsetModelCopyWithImpl(this._value, this._then);

  final ScaleOffsetModel _value;
  // ignore: unused_field
  final $Res Function(ScaleOffsetModel) _then;

  @override
  $Res call({
    Object? scale = freezed,
    Object? dx = freezed,
    Object? dy = freezed,
  }) {
    return _then(_value.copyWith(
      scale: scale == freezed
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      dx: dx == freezed
          ? _value.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as double,
      dy: dy == freezed
          ? _value.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ScaleOffsetModelCopyWith<$Res>
    implements $ScaleOffsetModelCopyWith<$Res> {
  factory _$ScaleOffsetModelCopyWith(
          _ScaleOffsetModel value, $Res Function(_ScaleOffsetModel) then) =
      __$ScaleOffsetModelCopyWithImpl<$Res>;
  @override
  $Res call({double scale, double dx, double dy});
}

/// @nodoc
class __$ScaleOffsetModelCopyWithImpl<$Res>
    extends _$ScaleOffsetModelCopyWithImpl<$Res>
    implements _$ScaleOffsetModelCopyWith<$Res> {
  __$ScaleOffsetModelCopyWithImpl(
      _ScaleOffsetModel _value, $Res Function(_ScaleOffsetModel) _then)
      : super(_value, (v) => _then(v as _ScaleOffsetModel));

  @override
  _ScaleOffsetModel get _value => super._value as _ScaleOffsetModel;

  @override
  $Res call({
    Object? scale = freezed,
    Object? dx = freezed,
    Object? dy = freezed,
  }) {
    return _then(_ScaleOffsetModel(
      scale: scale == freezed
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      dx: dx == freezed
          ? _value.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as double,
      dy: dy == freezed
          ? _value.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScaleOffsetModel implements _ScaleOffsetModel {
  const _$_ScaleOffsetModel(
      {required this.scale, required this.dx, required this.dy});

  factory _$_ScaleOffsetModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ScaleOffsetModelFromJson(json);

  @override
  final double scale;
  @override
  final double dx;
  @override
  final double dy;

  @override
  String toString() {
    return 'ScaleOffsetModel(scale: $scale, dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScaleOffsetModel &&
            (identical(other.scale, scale) ||
                const DeepCollectionEquality().equals(other.scale, scale)) &&
            (identical(other.dx, dx) ||
                const DeepCollectionEquality().equals(other.dx, dx)) &&
            (identical(other.dy, dy) ||
                const DeepCollectionEquality().equals(other.dy, dy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(scale) ^
      const DeepCollectionEquality().hash(dx) ^
      const DeepCollectionEquality().hash(dy);

  @JsonKey(ignore: true)
  @override
  _$ScaleOffsetModelCopyWith<_ScaleOffsetModel> get copyWith =>
      __$ScaleOffsetModelCopyWithImpl<_ScaleOffsetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ScaleOffsetModelToJson(this);
  }
}

abstract class _ScaleOffsetModel implements ScaleOffsetModel {
  const factory _ScaleOffsetModel(
      {required double scale,
      required double dx,
      required double dy}) = _$_ScaleOffsetModel;

  factory _ScaleOffsetModel.fromJson(Map<String, dynamic> json) =
      _$_ScaleOffsetModel.fromJson;

  @override
  double get scale => throw _privateConstructorUsedError;
  @override
  double get dx => throw _privateConstructorUsedError;
  @override
  double get dy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScaleOffsetModelCopyWith<_ScaleOffsetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
