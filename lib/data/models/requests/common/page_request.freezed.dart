// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'page_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageRequest _$PageRequestFromJson(Map<String, dynamic> json) {
  return _PageRequest.fromJson(json);
}

/// @nodoc
class _$PageRequestTearOff {
  const _$PageRequestTearOff();

  _PageRequest call({int? page, int? pageSize}) {
    return _PageRequest(
      page: page,
      pageSize: pageSize,
    );
  }

  PageRequest fromJson(Map<String, Object> json) {
    return PageRequest.fromJson(json);
  }
}

/// @nodoc
const $PageRequest = _$PageRequestTearOff();

/// @nodoc
mixin _$PageRequest {
  int? get page => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageRequestCopyWith<PageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageRequestCopyWith<$Res> {
  factory $PageRequestCopyWith(
          PageRequest value, $Res Function(PageRequest) then) =
      _$PageRequestCopyWithImpl<$Res>;
  $Res call({int? page, int? pageSize});
}

/// @nodoc
class _$PageRequestCopyWithImpl<$Res> implements $PageRequestCopyWith<$Res> {
  _$PageRequestCopyWithImpl(this._value, this._then);

  final PageRequest _value;
  // ignore: unused_field
  final $Res Function(PageRequest) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PageRequestCopyWith<$Res>
    implements $PageRequestCopyWith<$Res> {
  factory _$PageRequestCopyWith(
          _PageRequest value, $Res Function(_PageRequest) then) =
      __$PageRequestCopyWithImpl<$Res>;
  @override
  $Res call({int? page, int? pageSize});
}

/// @nodoc
class __$PageRequestCopyWithImpl<$Res> extends _$PageRequestCopyWithImpl<$Res>
    implements _$PageRequestCopyWith<$Res> {
  __$PageRequestCopyWithImpl(
      _PageRequest _value, $Res Function(_PageRequest) _then)
      : super(_value, (v) => _then(v as _PageRequest));

  @override
  _PageRequest get _value => super._value as _PageRequest;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_PageRequest(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PageRequest implements _PageRequest {
  const _$_PageRequest({this.page, this.pageSize});

  factory _$_PageRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_PageRequestFromJson(json);

  @override
  final int? page;
  @override
  final int? pageSize;

  @override
  String toString() {
    return 'PageRequest(page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageRequest &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageSize);

  @JsonKey(ignore: true)
  @override
  _$PageRequestCopyWith<_PageRequest> get copyWith =>
      __$PageRequestCopyWithImpl<_PageRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PageRequestToJson(this);
  }
}

abstract class _PageRequest implements PageRequest {
  const factory _PageRequest({int? page, int? pageSize}) = _$_PageRequest;

  factory _PageRequest.fromJson(Map<String, dynamic> json) =
      _$_PageRequest.fromJson;

  @override
  int? get page => throw _privateConstructorUsedError;
  @override
  int? get pageSize => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PageRequestCopyWith<_PageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
