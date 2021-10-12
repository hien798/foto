// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'editor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditorModel _$EditorModelFromJson(Map<String, dynamic> json) {
  return _EditorModel.fromJson(json);
}

/// @nodoc
class _$EditorModelTearOff {
  const _$EditorModelTearOff();

  _EditorModel call(
      {required String image,
      String? filter,
      List<ItemViewModel>? items,
      DateTime? createTime,
      DateTime? updateTime}) {
    return _EditorModel(
      image: image,
      filter: filter,
      items: items,
      createTime: createTime,
      updateTime: updateTime,
    );
  }

  EditorModel fromJson(Map<String, Object> json) {
    return EditorModel.fromJson(json);
  }
}

/// @nodoc
const $EditorModel = _$EditorModelTearOff();

/// @nodoc
mixin _$EditorModel {
  String get image => throw _privateConstructorUsedError;
  String? get filter => throw _privateConstructorUsedError;
  List<ItemViewModel>? get items => throw _privateConstructorUsedError;
  DateTime? get createTime => throw _privateConstructorUsedError;
  DateTime? get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditorModelCopyWith<EditorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorModelCopyWith<$Res> {
  factory $EditorModelCopyWith(
          EditorModel value, $Res Function(EditorModel) then) =
      _$EditorModelCopyWithImpl<$Res>;
  $Res call(
      {String image,
      String? filter,
      List<ItemViewModel>? items,
      DateTime? createTime,
      DateTime? updateTime});
}

/// @nodoc
class _$EditorModelCopyWithImpl<$Res> implements $EditorModelCopyWith<$Res> {
  _$EditorModelCopyWithImpl(this._value, this._then);

  final EditorModel _value;
  // ignore: unused_field
  final $Res Function(EditorModel) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? filter = freezed,
    Object? items = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemViewModel>?,
      createTime: createTime == freezed
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateTime: updateTime == freezed
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$EditorModelCopyWith<$Res>
    implements $EditorModelCopyWith<$Res> {
  factory _$EditorModelCopyWith(
          _EditorModel value, $Res Function(_EditorModel) then) =
      __$EditorModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image,
      String? filter,
      List<ItemViewModel>? items,
      DateTime? createTime,
      DateTime? updateTime});
}

/// @nodoc
class __$EditorModelCopyWithImpl<$Res> extends _$EditorModelCopyWithImpl<$Res>
    implements _$EditorModelCopyWith<$Res> {
  __$EditorModelCopyWithImpl(
      _EditorModel _value, $Res Function(_EditorModel) _then)
      : super(_value, (v) => _then(v as _EditorModel));

  @override
  _EditorModel get _value => super._value as _EditorModel;

  @override
  $Res call({
    Object? image = freezed,
    Object? filter = freezed,
    Object? items = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_EditorModel(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemViewModel>?,
      createTime: createTime == freezed
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateTime: updateTime == freezed
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditorModel implements _EditorModel {
  const _$_EditorModel(
      {required this.image,
      this.filter,
      this.items,
      this.createTime,
      this.updateTime});

  factory _$_EditorModel.fromJson(Map<String, dynamic> json) =>
      _$_$_EditorModelFromJson(json);

  @override
  final String image;
  @override
  final String? filter;
  @override
  final List<ItemViewModel>? items;
  @override
  final DateTime? createTime;
  @override
  final DateTime? updateTime;

  @override
  String toString() {
    return 'EditorModel(image: $image, filter: $filter, items: $items, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditorModel &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.createTime, createTime) ||
                const DeepCollectionEquality()
                    .equals(other.createTime, createTime)) &&
            (identical(other.updateTime, updateTime) ||
                const DeepCollectionEquality()
                    .equals(other.updateTime, updateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(filter) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(createTime) ^
      const DeepCollectionEquality().hash(updateTime);

  @JsonKey(ignore: true)
  @override
  _$EditorModelCopyWith<_EditorModel> get copyWith =>
      __$EditorModelCopyWithImpl<_EditorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EditorModelToJson(this);
  }
}

abstract class _EditorModel implements EditorModel {
  const factory _EditorModel(
      {required String image,
      String? filter,
      List<ItemViewModel>? items,
      DateTime? createTime,
      DateTime? updateTime}) = _$_EditorModel;

  factory _EditorModel.fromJson(Map<String, dynamic> json) =
      _$_EditorModel.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String? get filter => throw _privateConstructorUsedError;
  @override
  List<ItemViewModel>? get items => throw _privateConstructorUsedError;
  @override
  DateTime? get createTime => throw _privateConstructorUsedError;
  @override
  DateTime? get updateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditorModelCopyWith<_EditorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
