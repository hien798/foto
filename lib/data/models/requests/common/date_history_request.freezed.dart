// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'date_history_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateHistoryRequest _$DateHistoryRequestFromJson(Map<String, dynamic> json) {
  return _DateHistoryRequest.fromJson(json);
}

/// @nodoc
class _$DateHistoryRequestTearOff {
  const _$DateHistoryRequestTearOff();

  _DateHistoryRequest call({DateTime? from_date, DateTime? to_date}) {
    return _DateHistoryRequest(
      from_date: from_date,
      to_date: to_date,
    );
  }

  DateHistoryRequest fromJson(Map<String, Object> json) {
    return DateHistoryRequest.fromJson(json);
  }
}

/// @nodoc
const $DateHistoryRequest = _$DateHistoryRequestTearOff();

/// @nodoc
mixin _$DateHistoryRequest {
  DateTime? get from_date => throw _privateConstructorUsedError;
  DateTime? get to_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateHistoryRequestCopyWith<DateHistoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateHistoryRequestCopyWith<$Res> {
  factory $DateHistoryRequestCopyWith(
          DateHistoryRequest value, $Res Function(DateHistoryRequest) then) =
      _$DateHistoryRequestCopyWithImpl<$Res>;
  $Res call({DateTime? from_date, DateTime? to_date});
}

/// @nodoc
class _$DateHistoryRequestCopyWithImpl<$Res>
    implements $DateHistoryRequestCopyWith<$Res> {
  _$DateHistoryRequestCopyWithImpl(this._value, this._then);

  final DateHistoryRequest _value;
  // ignore: unused_field
  final $Res Function(DateHistoryRequest) _then;

  @override
  $Res call({
    Object? from_date = freezed,
    Object? to_date = freezed,
  }) {
    return _then(_value.copyWith(
      from_date: from_date == freezed
          ? _value.from_date
          : from_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      to_date: to_date == freezed
          ? _value.to_date
          : to_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$DateHistoryRequestCopyWith<$Res>
    implements $DateHistoryRequestCopyWith<$Res> {
  factory _$DateHistoryRequestCopyWith(
          _DateHistoryRequest value, $Res Function(_DateHistoryRequest) then) =
      __$DateHistoryRequestCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? from_date, DateTime? to_date});
}

/// @nodoc
class __$DateHistoryRequestCopyWithImpl<$Res>
    extends _$DateHistoryRequestCopyWithImpl<$Res>
    implements _$DateHistoryRequestCopyWith<$Res> {
  __$DateHistoryRequestCopyWithImpl(
      _DateHistoryRequest _value, $Res Function(_DateHistoryRequest) _then)
      : super(_value, (v) => _then(v as _DateHistoryRequest));

  @override
  _DateHistoryRequest get _value => super._value as _DateHistoryRequest;

  @override
  $Res call({
    Object? from_date = freezed,
    Object? to_date = freezed,
  }) {
    return _then(_DateHistoryRequest(
      from_date: from_date == freezed
          ? _value.from_date
          : from_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      to_date: to_date == freezed
          ? _value.to_date
          : to_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateHistoryRequest implements _DateHistoryRequest {
  const _$_DateHistoryRequest({this.from_date, this.to_date});

  factory _$_DateHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_DateHistoryRequestFromJson(json);

  @override
  final DateTime? from_date;
  @override
  final DateTime? to_date;

  @override
  String toString() {
    return 'DateHistoryRequest(from_date: $from_date, to_date: $to_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateHistoryRequest &&
            (identical(other.from_date, from_date) ||
                const DeepCollectionEquality()
                    .equals(other.from_date, from_date)) &&
            (identical(other.to_date, to_date) ||
                const DeepCollectionEquality().equals(other.to_date, to_date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from_date) ^
      const DeepCollectionEquality().hash(to_date);

  @JsonKey(ignore: true)
  @override
  _$DateHistoryRequestCopyWith<_DateHistoryRequest> get copyWith =>
      __$DateHistoryRequestCopyWithImpl<_DateHistoryRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DateHistoryRequestToJson(this);
  }
}

abstract class _DateHistoryRequest implements DateHistoryRequest {
  const factory _DateHistoryRequest({DateTime? from_date, DateTime? to_date}) =
      _$_DateHistoryRequest;

  factory _DateHistoryRequest.fromJson(Map<String, dynamic> json) =
      _$_DateHistoryRequest.fromJson;

  @override
  DateTime? get from_date => throw _privateConstructorUsedError;
  @override
  DateTime? get to_date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DateHistoryRequestCopyWith<_DateHistoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
