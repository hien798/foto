// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'scale_offset_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScaleOffsetStateTearOff {
  const _$ScaleOffsetStateTearOff();

  _ScaleOffsetState call(
      {required double scale, required double dx, required double dy}) {
    return _ScaleOffsetState(
      scale: scale,
      dx: dx,
      dy: dy,
    );
  }
}

/// @nodoc
const $ScaleOffsetState = _$ScaleOffsetStateTearOff();

/// @nodoc
mixin _$ScaleOffsetState {
  double get scale => throw _privateConstructorUsedError;
  double get dx => throw _privateConstructorUsedError;
  double get dy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScaleOffsetStateCopyWith<ScaleOffsetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScaleOffsetStateCopyWith<$Res> {
  factory $ScaleOffsetStateCopyWith(
          ScaleOffsetState value, $Res Function(ScaleOffsetState) then) =
      _$ScaleOffsetStateCopyWithImpl<$Res>;
  $Res call({double scale, double dx, double dy});
}

/// @nodoc
class _$ScaleOffsetStateCopyWithImpl<$Res>
    implements $ScaleOffsetStateCopyWith<$Res> {
  _$ScaleOffsetStateCopyWithImpl(this._value, this._then);

  final ScaleOffsetState _value;
  // ignore: unused_field
  final $Res Function(ScaleOffsetState) _then;

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
abstract class _$ScaleOffsetStateCopyWith<$Res>
    implements $ScaleOffsetStateCopyWith<$Res> {
  factory _$ScaleOffsetStateCopyWith(
          _ScaleOffsetState value, $Res Function(_ScaleOffsetState) then) =
      __$ScaleOffsetStateCopyWithImpl<$Res>;
  @override
  $Res call({double scale, double dx, double dy});
}

/// @nodoc
class __$ScaleOffsetStateCopyWithImpl<$Res>
    extends _$ScaleOffsetStateCopyWithImpl<$Res>
    implements _$ScaleOffsetStateCopyWith<$Res> {
  __$ScaleOffsetStateCopyWithImpl(
      _ScaleOffsetState _value, $Res Function(_ScaleOffsetState) _then)
      : super(_value, (v) => _then(v as _ScaleOffsetState));

  @override
  _ScaleOffsetState get _value => super._value as _ScaleOffsetState;

  @override
  $Res call({
    Object? scale = freezed,
    Object? dx = freezed,
    Object? dy = freezed,
  }) {
    return _then(_ScaleOffsetState(
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

class _$_ScaleOffsetState implements _ScaleOffsetState {
  const _$_ScaleOffsetState(
      {required this.scale, required this.dx, required this.dy});

  @override
  final double scale;
  @override
  final double dx;
  @override
  final double dy;

  @override
  String toString() {
    return 'ScaleOffsetState(scale: $scale, dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScaleOffsetState &&
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
  _$ScaleOffsetStateCopyWith<_ScaleOffsetState> get copyWith =>
      __$ScaleOffsetStateCopyWithImpl<_ScaleOffsetState>(this, _$identity);
}

abstract class _ScaleOffsetState implements ScaleOffsetState {
  const factory _ScaleOffsetState(
      {required double scale,
      required double dx,
      required double dy}) = _$_ScaleOffsetState;

  @override
  double get scale => throw _privateConstructorUsedError;
  @override
  double get dx => throw _privateConstructorUsedError;
  @override
  double get dy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScaleOffsetStateCopyWith<_ScaleOffsetState> get copyWith =>
      throw _privateConstructorUsedError;
}
