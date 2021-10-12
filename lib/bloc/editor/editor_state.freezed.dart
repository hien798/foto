// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'editor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditorStateTearOff {
  const _$EditorStateTearOff();

  _EditorState call() {
    return const _EditorState();
  }

  ImageLoaded imageLoaded(String image, {double? ratio}) {
    return ImageLoaded(
      image,
      ratio: ratio,
    );
  }

  FilterLoaded filterLoaded(String? filter) {
    return FilterLoaded(
      filter,
    );
  }

  ItemsLoaded itemsLoaded(List<ItemViewModel>? items) {
    return ItemsLoaded(
      items,
    );
  }
}

/// @nodoc
const $EditorState = _$EditorStateTearOff();

/// @nodoc
mixin _$EditorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String image, double? ratio) imageLoaded,
    required TResult Function(String? filter) filterLoaded,
    required TResult Function(List<ItemViewModel>? items) itemsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String image, double? ratio)? imageLoaded,
    TResult Function(String? filter)? filterLoaded,
    TResult Function(List<ItemViewModel>? items)? itemsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditorState value) $default, {
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(FilterLoaded value) filterLoaded,
    required TResult Function(ItemsLoaded value) itemsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditorState value)? $default, {
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(FilterLoaded value)? filterLoaded,
    TResult Function(ItemsLoaded value)? itemsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorStateCopyWith<$Res> {
  factory $EditorStateCopyWith(
          EditorState value, $Res Function(EditorState) then) =
      _$EditorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditorStateCopyWithImpl<$Res> implements $EditorStateCopyWith<$Res> {
  _$EditorStateCopyWithImpl(this._value, this._then);

  final EditorState _value;
  // ignore: unused_field
  final $Res Function(EditorState) _then;
}

/// @nodoc
abstract class _$EditorStateCopyWith<$Res> {
  factory _$EditorStateCopyWith(
          _EditorState value, $Res Function(_EditorState) then) =
      __$EditorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditorStateCopyWithImpl<$Res> extends _$EditorStateCopyWithImpl<$Res>
    implements _$EditorStateCopyWith<$Res> {
  __$EditorStateCopyWithImpl(
      _EditorState _value, $Res Function(_EditorState) _then)
      : super(_value, (v) => _then(v as _EditorState));

  @override
  _EditorState get _value => super._value as _EditorState;
}

/// @nodoc

class _$_EditorState implements _EditorState {
  const _$_EditorState();

  @override
  String toString() {
    return 'EditorState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EditorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String image, double? ratio) imageLoaded,
    required TResult Function(String? filter) filterLoaded,
    required TResult Function(List<ItemViewModel>? items) itemsLoaded,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String image, double? ratio)? imageLoaded,
    TResult Function(String? filter)? filterLoaded,
    TResult Function(List<ItemViewModel>? items)? itemsLoaded,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditorState value) $default, {
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(FilterLoaded value) filterLoaded,
    required TResult Function(ItemsLoaded value) itemsLoaded,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditorState value)? $default, {
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(FilterLoaded value)? filterLoaded,
    TResult Function(ItemsLoaded value)? itemsLoaded,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _EditorState implements EditorState {
  const factory _EditorState() = _$_EditorState;
}

/// @nodoc
abstract class $ImageLoadedCopyWith<$Res> {
  factory $ImageLoadedCopyWith(
          ImageLoaded value, $Res Function(ImageLoaded) then) =
      _$ImageLoadedCopyWithImpl<$Res>;
  $Res call({String image, double? ratio});
}

/// @nodoc
class _$ImageLoadedCopyWithImpl<$Res> extends _$EditorStateCopyWithImpl<$Res>
    implements $ImageLoadedCopyWith<$Res> {
  _$ImageLoadedCopyWithImpl(
      ImageLoaded _value, $Res Function(ImageLoaded) _then)
      : super(_value, (v) => _then(v as ImageLoaded));

  @override
  ImageLoaded get _value => super._value as ImageLoaded;

  @override
  $Res call({
    Object? image = freezed,
    Object? ratio = freezed,
  }) {
    return _then(ImageLoaded(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      ratio: ratio == freezed
          ? _value.ratio
          : ratio // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$ImageLoaded implements ImageLoaded {
  const _$ImageLoaded(this.image, {this.ratio});

  @override
  final String image;
  @override
  final double? ratio;

  @override
  String toString() {
    return 'EditorState.imageLoaded(image: $image, ratio: $ratio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageLoaded &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.ratio, ratio) ||
                const DeepCollectionEquality().equals(other.ratio, ratio)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(ratio);

  @JsonKey(ignore: true)
  @override
  $ImageLoadedCopyWith<ImageLoaded> get copyWith =>
      _$ImageLoadedCopyWithImpl<ImageLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String image, double? ratio) imageLoaded,
    required TResult Function(String? filter) filterLoaded,
    required TResult Function(List<ItemViewModel>? items) itemsLoaded,
  }) {
    return imageLoaded(image, ratio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String image, double? ratio)? imageLoaded,
    TResult Function(String? filter)? filterLoaded,
    TResult Function(List<ItemViewModel>? items)? itemsLoaded,
    required TResult orElse(),
  }) {
    if (imageLoaded != null) {
      return imageLoaded(image, ratio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditorState value) $default, {
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(FilterLoaded value) filterLoaded,
    required TResult Function(ItemsLoaded value) itemsLoaded,
  }) {
    return imageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditorState value)? $default, {
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(FilterLoaded value)? filterLoaded,
    TResult Function(ItemsLoaded value)? itemsLoaded,
    required TResult orElse(),
  }) {
    if (imageLoaded != null) {
      return imageLoaded(this);
    }
    return orElse();
  }
}

abstract class ImageLoaded implements EditorState {
  const factory ImageLoaded(String image, {double? ratio}) = _$ImageLoaded;

  String get image => throw _privateConstructorUsedError;
  double? get ratio => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageLoadedCopyWith<ImageLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterLoadedCopyWith<$Res> {
  factory $FilterLoadedCopyWith(
          FilterLoaded value, $Res Function(FilterLoaded) then) =
      _$FilterLoadedCopyWithImpl<$Res>;
  $Res call({String? filter});
}

/// @nodoc
class _$FilterLoadedCopyWithImpl<$Res> extends _$EditorStateCopyWithImpl<$Res>
    implements $FilterLoadedCopyWith<$Res> {
  _$FilterLoadedCopyWithImpl(
      FilterLoaded _value, $Res Function(FilterLoaded) _then)
      : super(_value, (v) => _then(v as FilterLoaded));

  @override
  FilterLoaded get _value => super._value as FilterLoaded;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(FilterLoaded(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FilterLoaded implements FilterLoaded {
  const _$FilterLoaded(this.filter);

  @override
  final String? filter;

  @override
  String toString() {
    return 'EditorState.filterLoaded(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FilterLoaded &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  $FilterLoadedCopyWith<FilterLoaded> get copyWith =>
      _$FilterLoadedCopyWithImpl<FilterLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String image, double? ratio) imageLoaded,
    required TResult Function(String? filter) filterLoaded,
    required TResult Function(List<ItemViewModel>? items) itemsLoaded,
  }) {
    return filterLoaded(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String image, double? ratio)? imageLoaded,
    TResult Function(String? filter)? filterLoaded,
    TResult Function(List<ItemViewModel>? items)? itemsLoaded,
    required TResult orElse(),
  }) {
    if (filterLoaded != null) {
      return filterLoaded(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditorState value) $default, {
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(FilterLoaded value) filterLoaded,
    required TResult Function(ItemsLoaded value) itemsLoaded,
  }) {
    return filterLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditorState value)? $default, {
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(FilterLoaded value)? filterLoaded,
    TResult Function(ItemsLoaded value)? itemsLoaded,
    required TResult orElse(),
  }) {
    if (filterLoaded != null) {
      return filterLoaded(this);
    }
    return orElse();
  }
}

abstract class FilterLoaded implements EditorState {
  const factory FilterLoaded(String? filter) = _$FilterLoaded;

  String? get filter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterLoadedCopyWith<FilterLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsLoadedCopyWith<$Res> {
  factory $ItemsLoadedCopyWith(
          ItemsLoaded value, $Res Function(ItemsLoaded) then) =
      _$ItemsLoadedCopyWithImpl<$Res>;
  $Res call({List<ItemViewModel>? items});
}

/// @nodoc
class _$ItemsLoadedCopyWithImpl<$Res> extends _$EditorStateCopyWithImpl<$Res>
    implements $ItemsLoadedCopyWith<$Res> {
  _$ItemsLoadedCopyWithImpl(
      ItemsLoaded _value, $Res Function(ItemsLoaded) _then)
      : super(_value, (v) => _then(v as ItemsLoaded));

  @override
  ItemsLoaded get _value => super._value as ItemsLoaded;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(ItemsLoaded(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemViewModel>?,
    ));
  }
}

/// @nodoc

class _$ItemsLoaded implements ItemsLoaded {
  const _$ItemsLoaded(this.items);

  @override
  final List<ItemViewModel>? items;

  @override
  String toString() {
    return 'EditorState.itemsLoaded(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ItemsLoaded &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  $ItemsLoadedCopyWith<ItemsLoaded> get copyWith =>
      _$ItemsLoadedCopyWithImpl<ItemsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String image, double? ratio) imageLoaded,
    required TResult Function(String? filter) filterLoaded,
    required TResult Function(List<ItemViewModel>? items) itemsLoaded,
  }) {
    return itemsLoaded(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String image, double? ratio)? imageLoaded,
    TResult Function(String? filter)? filterLoaded,
    TResult Function(List<ItemViewModel>? items)? itemsLoaded,
    required TResult orElse(),
  }) {
    if (itemsLoaded != null) {
      return itemsLoaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditorState value) $default, {
    required TResult Function(ImageLoaded value) imageLoaded,
    required TResult Function(FilterLoaded value) filterLoaded,
    required TResult Function(ItemsLoaded value) itemsLoaded,
  }) {
    return itemsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditorState value)? $default, {
    TResult Function(ImageLoaded value)? imageLoaded,
    TResult Function(FilterLoaded value)? filterLoaded,
    TResult Function(ItemsLoaded value)? itemsLoaded,
    required TResult orElse(),
  }) {
    if (itemsLoaded != null) {
      return itemsLoaded(this);
    }
    return orElse();
  }
}

abstract class ItemsLoaded implements EditorState {
  const factory ItemsLoaded(List<ItemViewModel>? items) = _$ItemsLoaded;

  List<ItemViewModel>? get items => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsLoadedCopyWith<ItemsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
