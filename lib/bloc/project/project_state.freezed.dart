// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'project_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectStateTearOff {
  const _$ProjectStateTearOff();

  _ProjectState call({List<EditorModel>? projects}) {
    return _ProjectState(
      projects: projects,
    );
  }

  ProjectLoading loading({List<EditorModel>? projects}) {
    return ProjectLoading(
      projects: projects,
    );
  }

  ProjectLoaded loaded({List<EditorModel>? projects}) {
    return ProjectLoaded(
      projects: projects,
    );
  }

  ProjectSaved saved({List<EditorModel>? projects}) {
    return ProjectSaved(
      projects: projects,
    );
  }
}

/// @nodoc
const $ProjectState = _$ProjectStateTearOff();

/// @nodoc
mixin _$ProjectState {
  List<EditorModel>? get projects => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<EditorModel>? projects) $default, {
    required TResult Function(List<EditorModel>? projects) loading,
    required TResult Function(List<EditorModel>? projects) loaded,
    required TResult Function(List<EditorModel>? projects) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<EditorModel>? projects)? $default, {
    TResult Function(List<EditorModel>? projects)? loading,
    TResult Function(List<EditorModel>? projects)? loaded,
    TResult Function(List<EditorModel>? projects)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProjectState value) $default, {
    required TResult Function(ProjectLoading value) loading,
    required TResult Function(ProjectLoaded value) loaded,
    required TResult Function(ProjectSaved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProjectState value)? $default, {
    TResult Function(ProjectLoading value)? loading,
    TResult Function(ProjectLoaded value)? loaded,
    TResult Function(ProjectSaved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectStateCopyWith<ProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res>;
  $Res call({List<EditorModel>? projects});
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res> implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  final ProjectState _value;
  // ignore: unused_field
  final $Res Function(ProjectState) _then;

  @override
  $Res call({
    Object? projects = freezed,
  }) {
    return _then(_value.copyWith(
      projects: projects == freezed
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<EditorModel>?,
    ));
  }
}

/// @nodoc
abstract class _$ProjectStateCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory _$ProjectStateCopyWith(
          _ProjectState value, $Res Function(_ProjectState) then) =
      __$ProjectStateCopyWithImpl<$Res>;
  @override
  $Res call({List<EditorModel>? projects});
}

/// @nodoc
class __$ProjectStateCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements _$ProjectStateCopyWith<$Res> {
  __$ProjectStateCopyWithImpl(
      _ProjectState _value, $Res Function(_ProjectState) _then)
      : super(_value, (v) => _then(v as _ProjectState));

  @override
  _ProjectState get _value => super._value as _ProjectState;

  @override
  $Res call({
    Object? projects = freezed,
  }) {
    return _then(_ProjectState(
      projects: projects == freezed
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<EditorModel>?,
    ));
  }
}

/// @nodoc

class _$_ProjectState implements _ProjectState {
  const _$_ProjectState({this.projects});

  @override
  final List<EditorModel>? projects;

  @override
  String toString() {
    return 'ProjectState(projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectState &&
            (identical(other.projects, projects) ||
                const DeepCollectionEquality()
                    .equals(other.projects, projects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(projects);

  @JsonKey(ignore: true)
  @override
  _$ProjectStateCopyWith<_ProjectState> get copyWith =>
      __$ProjectStateCopyWithImpl<_ProjectState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<EditorModel>? projects) $default, {
    required TResult Function(List<EditorModel>? projects) loading,
    required TResult Function(List<EditorModel>? projects) loaded,
    required TResult Function(List<EditorModel>? projects) saved,
  }) {
    return $default(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<EditorModel>? projects)? $default, {
    TResult Function(List<EditorModel>? projects)? loading,
    TResult Function(List<EditorModel>? projects)? loaded,
    TResult Function(List<EditorModel>? projects)? saved,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProjectState value) $default, {
    required TResult Function(ProjectLoading value) loading,
    required TResult Function(ProjectLoaded value) loaded,
    required TResult Function(ProjectSaved value) saved,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProjectState value)? $default, {
    TResult Function(ProjectLoading value)? loading,
    TResult Function(ProjectLoaded value)? loaded,
    TResult Function(ProjectSaved value)? saved,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ProjectState implements ProjectState {
  const factory _ProjectState({List<EditorModel>? projects}) = _$_ProjectState;

  @override
  List<EditorModel>? get projects => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProjectStateCopyWith<_ProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectLoadingCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory $ProjectLoadingCopyWith(
          ProjectLoading value, $Res Function(ProjectLoading) then) =
      _$ProjectLoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<EditorModel>? projects});
}

/// @nodoc
class _$ProjectLoadingCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res>
    implements $ProjectLoadingCopyWith<$Res> {
  _$ProjectLoadingCopyWithImpl(
      ProjectLoading _value, $Res Function(ProjectLoading) _then)
      : super(_value, (v) => _then(v as ProjectLoading));

  @override
  ProjectLoading get _value => super._value as ProjectLoading;

  @override
  $Res call({
    Object? projects = freezed,
  }) {
    return _then(ProjectLoading(
      projects: projects == freezed
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<EditorModel>?,
    ));
  }
}

/// @nodoc

class _$ProjectLoading implements ProjectLoading {
  const _$ProjectLoading({this.projects});

  @override
  final List<EditorModel>? projects;

  @override
  String toString() {
    return 'ProjectState.loading(projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectLoading &&
            (identical(other.projects, projects) ||
                const DeepCollectionEquality()
                    .equals(other.projects, projects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(projects);

  @JsonKey(ignore: true)
  @override
  $ProjectLoadingCopyWith<ProjectLoading> get copyWith =>
      _$ProjectLoadingCopyWithImpl<ProjectLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<EditorModel>? projects) $default, {
    required TResult Function(List<EditorModel>? projects) loading,
    required TResult Function(List<EditorModel>? projects) loaded,
    required TResult Function(List<EditorModel>? projects) saved,
  }) {
    return loading(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<EditorModel>? projects)? $default, {
    TResult Function(List<EditorModel>? projects)? loading,
    TResult Function(List<EditorModel>? projects)? loaded,
    TResult Function(List<EditorModel>? projects)? saved,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProjectState value) $default, {
    required TResult Function(ProjectLoading value) loading,
    required TResult Function(ProjectLoaded value) loaded,
    required TResult Function(ProjectSaved value) saved,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProjectState value)? $default, {
    TResult Function(ProjectLoading value)? loading,
    TResult Function(ProjectLoaded value)? loaded,
    TResult Function(ProjectSaved value)? saved,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProjectLoading implements ProjectState {
  const factory ProjectLoading({List<EditorModel>? projects}) =
      _$ProjectLoading;

  @override
  List<EditorModel>? get projects => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ProjectLoadingCopyWith<ProjectLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectLoadedCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory $ProjectLoadedCopyWith(
          ProjectLoaded value, $Res Function(ProjectLoaded) then) =
      _$ProjectLoadedCopyWithImpl<$Res>;
  @override
  $Res call({List<EditorModel>? projects});
}

/// @nodoc
class _$ProjectLoadedCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements $ProjectLoadedCopyWith<$Res> {
  _$ProjectLoadedCopyWithImpl(
      ProjectLoaded _value, $Res Function(ProjectLoaded) _then)
      : super(_value, (v) => _then(v as ProjectLoaded));

  @override
  ProjectLoaded get _value => super._value as ProjectLoaded;

  @override
  $Res call({
    Object? projects = freezed,
  }) {
    return _then(ProjectLoaded(
      projects: projects == freezed
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<EditorModel>?,
    ));
  }
}

/// @nodoc

class _$ProjectLoaded implements ProjectLoaded {
  const _$ProjectLoaded({this.projects});

  @override
  final List<EditorModel>? projects;

  @override
  String toString() {
    return 'ProjectState.loaded(projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectLoaded &&
            (identical(other.projects, projects) ||
                const DeepCollectionEquality()
                    .equals(other.projects, projects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(projects);

  @JsonKey(ignore: true)
  @override
  $ProjectLoadedCopyWith<ProjectLoaded> get copyWith =>
      _$ProjectLoadedCopyWithImpl<ProjectLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<EditorModel>? projects) $default, {
    required TResult Function(List<EditorModel>? projects) loading,
    required TResult Function(List<EditorModel>? projects) loaded,
    required TResult Function(List<EditorModel>? projects) saved,
  }) {
    return loaded(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<EditorModel>? projects)? $default, {
    TResult Function(List<EditorModel>? projects)? loading,
    TResult Function(List<EditorModel>? projects)? loaded,
    TResult Function(List<EditorModel>? projects)? saved,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProjectState value) $default, {
    required TResult Function(ProjectLoading value) loading,
    required TResult Function(ProjectLoaded value) loaded,
    required TResult Function(ProjectSaved value) saved,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProjectState value)? $default, {
    TResult Function(ProjectLoading value)? loading,
    TResult Function(ProjectLoaded value)? loaded,
    TResult Function(ProjectSaved value)? saved,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProjectLoaded implements ProjectState {
  const factory ProjectLoaded({List<EditorModel>? projects}) = _$ProjectLoaded;

  @override
  List<EditorModel>? get projects => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ProjectLoadedCopyWith<ProjectLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSavedCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory $ProjectSavedCopyWith(
          ProjectSaved value, $Res Function(ProjectSaved) then) =
      _$ProjectSavedCopyWithImpl<$Res>;
  @override
  $Res call({List<EditorModel>? projects});
}

/// @nodoc
class _$ProjectSavedCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements $ProjectSavedCopyWith<$Res> {
  _$ProjectSavedCopyWithImpl(
      ProjectSaved _value, $Res Function(ProjectSaved) _then)
      : super(_value, (v) => _then(v as ProjectSaved));

  @override
  ProjectSaved get _value => super._value as ProjectSaved;

  @override
  $Res call({
    Object? projects = freezed,
  }) {
    return _then(ProjectSaved(
      projects: projects == freezed
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<EditorModel>?,
    ));
  }
}

/// @nodoc

class _$ProjectSaved implements ProjectSaved {
  const _$ProjectSaved({this.projects});

  @override
  final List<EditorModel>? projects;

  @override
  String toString() {
    return 'ProjectState.saved(projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectSaved &&
            (identical(other.projects, projects) ||
                const DeepCollectionEquality()
                    .equals(other.projects, projects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(projects);

  @JsonKey(ignore: true)
  @override
  $ProjectSavedCopyWith<ProjectSaved> get copyWith =>
      _$ProjectSavedCopyWithImpl<ProjectSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<EditorModel>? projects) $default, {
    required TResult Function(List<EditorModel>? projects) loading,
    required TResult Function(List<EditorModel>? projects) loaded,
    required TResult Function(List<EditorModel>? projects) saved,
  }) {
    return saved(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<EditorModel>? projects)? $default, {
    TResult Function(List<EditorModel>? projects)? loading,
    TResult Function(List<EditorModel>? projects)? loaded,
    TResult Function(List<EditorModel>? projects)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProjectState value) $default, {
    required TResult Function(ProjectLoading value) loading,
    required TResult Function(ProjectLoaded value) loaded,
    required TResult Function(ProjectSaved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProjectState value)? $default, {
    TResult Function(ProjectLoading value)? loading,
    TResult Function(ProjectLoaded value)? loaded,
    TResult Function(ProjectSaved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class ProjectSaved implements ProjectState {
  const factory ProjectSaved({List<EditorModel>? projects}) = _$ProjectSaved;

  @override
  List<EditorModel>? get projects => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ProjectSavedCopyWith<ProjectSaved> get copyWith =>
      throw _privateConstructorUsedError;
}
