// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemViewModel _$ItemViewModelFromJson(Map<String, dynamic> json) {
  return _ItemViewModel.fromJson(json);
}

/// @nodoc
class _$ItemViewModelTearOff {
  const _$ItemViewModelTearOff();

  _ItemViewModel call(
      {required int type, required double dx, required double dy}) {
    return _ItemViewModel(
      type: type,
      dx: dx,
      dy: dy,
    );
  }

  ItemViewModel fromJson(Map<String, Object> json) {
    return ItemViewModel.fromJson(json);
  }
}

/// @nodoc
const $ItemViewModel = _$ItemViewModelTearOff();

/// @nodoc
mixin _$ItemViewModel {
  int get type => throw _privateConstructorUsedError;
  double get dx => throw _privateConstructorUsedError;
  double get dy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemViewModelCopyWith<ItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemViewModelCopyWith<$Res> {
  factory $ItemViewModelCopyWith(
          ItemViewModel value, $Res Function(ItemViewModel) then) =
      _$ItemViewModelCopyWithImpl<$Res>;
  $Res call({int type, double dx, double dy});
}

/// @nodoc
class _$ItemViewModelCopyWithImpl<$Res>
    implements $ItemViewModelCopyWith<$Res> {
  _$ItemViewModelCopyWithImpl(this._value, this._then);

  final ItemViewModel _value;
  // ignore: unused_field
  final $Res Function(ItemViewModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? dx = freezed,
    Object? dy = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$ItemViewModelCopyWith<$Res>
    implements $ItemViewModelCopyWith<$Res> {
  factory _$ItemViewModelCopyWith(
          _ItemViewModel value, $Res Function(_ItemViewModel) then) =
      __$ItemViewModelCopyWithImpl<$Res>;
  @override
  $Res call({int type, double dx, double dy});
}

/// @nodoc
class __$ItemViewModelCopyWithImpl<$Res>
    extends _$ItemViewModelCopyWithImpl<$Res>
    implements _$ItemViewModelCopyWith<$Res> {
  __$ItemViewModelCopyWithImpl(
      _ItemViewModel _value, $Res Function(_ItemViewModel) _then)
      : super(_value, (v) => _then(v as _ItemViewModel));

  @override
  _ItemViewModel get _value => super._value as _ItemViewModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? dx = freezed,
    Object? dy = freezed,
  }) {
    return _then(_ItemViewModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_ItemViewModel implements _ItemViewModel {
  const _$_ItemViewModel(
      {required this.type, required this.dx, required this.dy});

  factory _$_ItemViewModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemViewModelFromJson(json);

  @override
  final int type;
  @override
  final double dx;
  @override
  final double dy;

  @override
  String toString() {
    return 'ItemViewModel(type: $type, dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemViewModel &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.dx, dx) ||
                const DeepCollectionEquality().equals(other.dx, dx)) &&
            (identical(other.dy, dy) ||
                const DeepCollectionEquality().equals(other.dy, dy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(dx) ^
      const DeepCollectionEquality().hash(dy);

  @JsonKey(ignore: true)
  @override
  _$ItemViewModelCopyWith<_ItemViewModel> get copyWith =>
      __$ItemViewModelCopyWithImpl<_ItemViewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemViewModelToJson(this);
  }
}

abstract class _ItemViewModel implements ItemViewModel {
  const factory _ItemViewModel(
      {required int type,
      required double dx,
      required double dy}) = _$_ItemViewModel;

  factory _ItemViewModel.fromJson(Map<String, dynamic> json) =
      _$_ItemViewModel.fromJson;

  @override
  int get type => throw _privateConstructorUsedError;
  @override
  double get dx => throw _privateConstructorUsedError;
  @override
  double get dy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemViewModelCopyWith<_ItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
