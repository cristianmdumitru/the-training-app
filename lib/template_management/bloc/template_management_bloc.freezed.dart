// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TemplateManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserExercise> exercises) addExercises,
    required TResult Function(UserExercise exercise) deleteExercise,
    required TResult Function(UserExercise exercise) updateExercise,
    required TResult Function(WorkoutTemplate template) fetch,
    required TResult Function(WorkoutTemplate template) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(UserExercise exercise)? deleteExercise,
    TResult? Function(UserExercise exercise)? updateExercise,
    TResult? Function(WorkoutTemplate template)? fetch,
    TResult? Function(WorkoutTemplate template)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(UserExercise exercise)? deleteExercise,
    TResult Function(UserExercise exercise)? updateExercise,
    TResult Function(WorkoutTemplate template)? fetch,
    TResult Function(WorkoutTemplate template)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExercises value) addExercises,
    required TResult Function(_DeleteExercise value) deleteExercise,
    required TResult Function(_UpdateExercise value) updateExercise,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddExercises value)? addExercises,
    TResult? Function(_DeleteExercise value)? deleteExercise,
    TResult? Function(_UpdateExercise value)? updateExercise,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddExercises value)? addExercises,
    TResult Function(_DeleteExercise value)? deleteExercise,
    TResult Function(_UpdateExercise value)? updateExercise,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateManagementEventCopyWith<$Res> {
  factory $TemplateManagementEventCopyWith(TemplateManagementEvent value,
          $Res Function(TemplateManagementEvent) then) =
      _$TemplateManagementEventCopyWithImpl<$Res, TemplateManagementEvent>;
}

/// @nodoc
class _$TemplateManagementEventCopyWithImpl<$Res,
        $Val extends TemplateManagementEvent>
    implements $TemplateManagementEventCopyWith<$Res> {
  _$TemplateManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddExercisesImplCopyWith<$Res> {
  factory _$$AddExercisesImplCopyWith(
          _$AddExercisesImpl value, $Res Function(_$AddExercisesImpl) then) =
      __$$AddExercisesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserExercise> exercises});
}

/// @nodoc
class __$$AddExercisesImplCopyWithImpl<$Res>
    extends _$TemplateManagementEventCopyWithImpl<$Res, _$AddExercisesImpl>
    implements _$$AddExercisesImplCopyWith<$Res> {
  __$$AddExercisesImplCopyWithImpl(
      _$AddExercisesImpl _value, $Res Function(_$AddExercisesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
  }) {
    return _then(_$AddExercisesImpl(
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<UserExercise>,
    ));
  }
}

/// @nodoc

class _$AddExercisesImpl implements _AddExercises {
  const _$AddExercisesImpl({required final List<UserExercise> exercises})
      : _exercises = exercises;

  final List<UserExercise> _exercises;
  @override
  List<UserExercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  String toString() {
    return 'TemplateManagementEvent.addExercises(exercises: $exercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExercisesImpl &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_exercises));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExercisesImplCopyWith<_$AddExercisesImpl> get copyWith =>
      __$$AddExercisesImplCopyWithImpl<_$AddExercisesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserExercise> exercises) addExercises,
    required TResult Function(UserExercise exercise) deleteExercise,
    required TResult Function(UserExercise exercise) updateExercise,
    required TResult Function(WorkoutTemplate template) fetch,
    required TResult Function(WorkoutTemplate template) update,
  }) {
    return addExercises(exercises);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(UserExercise exercise)? deleteExercise,
    TResult? Function(UserExercise exercise)? updateExercise,
    TResult? Function(WorkoutTemplate template)? fetch,
    TResult? Function(WorkoutTemplate template)? update,
  }) {
    return addExercises?.call(exercises);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(UserExercise exercise)? deleteExercise,
    TResult Function(UserExercise exercise)? updateExercise,
    TResult Function(WorkoutTemplate template)? fetch,
    TResult Function(WorkoutTemplate template)? update,
    required TResult orElse(),
  }) {
    if (addExercises != null) {
      return addExercises(exercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExercises value) addExercises,
    required TResult Function(_DeleteExercise value) deleteExercise,
    required TResult Function(_UpdateExercise value) updateExercise,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Update value) update,
  }) {
    return addExercises(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddExercises value)? addExercises,
    TResult? Function(_DeleteExercise value)? deleteExercise,
    TResult? Function(_UpdateExercise value)? updateExercise,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Update value)? update,
  }) {
    return addExercises?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddExercises value)? addExercises,
    TResult Function(_DeleteExercise value)? deleteExercise,
    TResult Function(_UpdateExercise value)? updateExercise,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (addExercises != null) {
      return addExercises(this);
    }
    return orElse();
  }
}

abstract class _AddExercises implements TemplateManagementEvent {
  const factory _AddExercises({required final List<UserExercise> exercises}) =
      _$AddExercisesImpl;

  List<UserExercise> get exercises;
  @JsonKey(ignore: true)
  _$$AddExercisesImplCopyWith<_$AddExercisesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteExerciseImplCopyWith<$Res> {
  factory _$$DeleteExerciseImplCopyWith(_$DeleteExerciseImpl value,
          $Res Function(_$DeleteExerciseImpl) then) =
      __$$DeleteExerciseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserExercise exercise});

  $UserExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$DeleteExerciseImplCopyWithImpl<$Res>
    extends _$TemplateManagementEventCopyWithImpl<$Res, _$DeleteExerciseImpl>
    implements _$$DeleteExerciseImplCopyWith<$Res> {
  __$$DeleteExerciseImplCopyWithImpl(
      _$DeleteExerciseImpl _value, $Res Function(_$DeleteExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
  }) {
    return _then(_$DeleteExerciseImpl(
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as UserExercise,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserExerciseCopyWith<$Res> get exercise {
    return $UserExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

/// @nodoc

class _$DeleteExerciseImpl implements _DeleteExercise {
  const _$DeleteExerciseImpl({required this.exercise});

  @override
  final UserExercise exercise;

  @override
  String toString() {
    return 'TemplateManagementEvent.deleteExercise(exercise: $exercise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteExerciseImpl &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteExerciseImplCopyWith<_$DeleteExerciseImpl> get copyWith =>
      __$$DeleteExerciseImplCopyWithImpl<_$DeleteExerciseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserExercise> exercises) addExercises,
    required TResult Function(UserExercise exercise) deleteExercise,
    required TResult Function(UserExercise exercise) updateExercise,
    required TResult Function(WorkoutTemplate template) fetch,
    required TResult Function(WorkoutTemplate template) update,
  }) {
    return deleteExercise(exercise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(UserExercise exercise)? deleteExercise,
    TResult? Function(UserExercise exercise)? updateExercise,
    TResult? Function(WorkoutTemplate template)? fetch,
    TResult? Function(WorkoutTemplate template)? update,
  }) {
    return deleteExercise?.call(exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(UserExercise exercise)? deleteExercise,
    TResult Function(UserExercise exercise)? updateExercise,
    TResult Function(WorkoutTemplate template)? fetch,
    TResult Function(WorkoutTemplate template)? update,
    required TResult orElse(),
  }) {
    if (deleteExercise != null) {
      return deleteExercise(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExercises value) addExercises,
    required TResult Function(_DeleteExercise value) deleteExercise,
    required TResult Function(_UpdateExercise value) updateExercise,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Update value) update,
  }) {
    return deleteExercise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddExercises value)? addExercises,
    TResult? Function(_DeleteExercise value)? deleteExercise,
    TResult? Function(_UpdateExercise value)? updateExercise,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Update value)? update,
  }) {
    return deleteExercise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddExercises value)? addExercises,
    TResult Function(_DeleteExercise value)? deleteExercise,
    TResult Function(_UpdateExercise value)? updateExercise,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (deleteExercise != null) {
      return deleteExercise(this);
    }
    return orElse();
  }
}

abstract class _DeleteExercise implements TemplateManagementEvent {
  const factory _DeleteExercise({required final UserExercise exercise}) =
      _$DeleteExerciseImpl;

  UserExercise get exercise;
  @JsonKey(ignore: true)
  _$$DeleteExerciseImplCopyWith<_$DeleteExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateExerciseImplCopyWith<$Res> {
  factory _$$UpdateExerciseImplCopyWith(_$UpdateExerciseImpl value,
          $Res Function(_$UpdateExerciseImpl) then) =
      __$$UpdateExerciseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserExercise exercise});

  $UserExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$UpdateExerciseImplCopyWithImpl<$Res>
    extends _$TemplateManagementEventCopyWithImpl<$Res, _$UpdateExerciseImpl>
    implements _$$UpdateExerciseImplCopyWith<$Res> {
  __$$UpdateExerciseImplCopyWithImpl(
      _$UpdateExerciseImpl _value, $Res Function(_$UpdateExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
  }) {
    return _then(_$UpdateExerciseImpl(
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as UserExercise,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserExerciseCopyWith<$Res> get exercise {
    return $UserExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

/// @nodoc

class _$UpdateExerciseImpl implements _UpdateExercise {
  const _$UpdateExerciseImpl({required this.exercise});

  @override
  final UserExercise exercise;

  @override
  String toString() {
    return 'TemplateManagementEvent.updateExercise(exercise: $exercise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateExerciseImpl &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateExerciseImplCopyWith<_$UpdateExerciseImpl> get copyWith =>
      __$$UpdateExerciseImplCopyWithImpl<_$UpdateExerciseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserExercise> exercises) addExercises,
    required TResult Function(UserExercise exercise) deleteExercise,
    required TResult Function(UserExercise exercise) updateExercise,
    required TResult Function(WorkoutTemplate template) fetch,
    required TResult Function(WorkoutTemplate template) update,
  }) {
    return updateExercise(exercise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(UserExercise exercise)? deleteExercise,
    TResult? Function(UserExercise exercise)? updateExercise,
    TResult? Function(WorkoutTemplate template)? fetch,
    TResult? Function(WorkoutTemplate template)? update,
  }) {
    return updateExercise?.call(exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(UserExercise exercise)? deleteExercise,
    TResult Function(UserExercise exercise)? updateExercise,
    TResult Function(WorkoutTemplate template)? fetch,
    TResult Function(WorkoutTemplate template)? update,
    required TResult orElse(),
  }) {
    if (updateExercise != null) {
      return updateExercise(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExercises value) addExercises,
    required TResult Function(_DeleteExercise value) deleteExercise,
    required TResult Function(_UpdateExercise value) updateExercise,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Update value) update,
  }) {
    return updateExercise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddExercises value)? addExercises,
    TResult? Function(_DeleteExercise value)? deleteExercise,
    TResult? Function(_UpdateExercise value)? updateExercise,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Update value)? update,
  }) {
    return updateExercise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddExercises value)? addExercises,
    TResult Function(_DeleteExercise value)? deleteExercise,
    TResult Function(_UpdateExercise value)? updateExercise,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (updateExercise != null) {
      return updateExercise(this);
    }
    return orElse();
  }
}

abstract class _UpdateExercise implements TemplateManagementEvent {
  const factory _UpdateExercise({required final UserExercise exercise}) =
      _$UpdateExerciseImpl;

  UserExercise get exercise;
  @JsonKey(ignore: true)
  _$$UpdateExerciseImplCopyWith<_$UpdateExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkoutTemplate template});

  $WorkoutTemplateCopyWith<$Res> get template;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$TemplateManagementEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? template = null,
  }) {
    return _then(_$FetchImpl(
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as WorkoutTemplate,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkoutTemplateCopyWith<$Res> get template {
    return $WorkoutTemplateCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value));
    });
  }
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl({required this.template});

  @override
  final WorkoutTemplate template;

  @override
  String toString() {
    return 'TemplateManagementEvent.fetch(template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @override
  int get hashCode => Object.hash(runtimeType, template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserExercise> exercises) addExercises,
    required TResult Function(UserExercise exercise) deleteExercise,
    required TResult Function(UserExercise exercise) updateExercise,
    required TResult Function(WorkoutTemplate template) fetch,
    required TResult Function(WorkoutTemplate template) update,
  }) {
    return fetch(template);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(UserExercise exercise)? deleteExercise,
    TResult? Function(UserExercise exercise)? updateExercise,
    TResult? Function(WorkoutTemplate template)? fetch,
    TResult? Function(WorkoutTemplate template)? update,
  }) {
    return fetch?.call(template);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(UserExercise exercise)? deleteExercise,
    TResult Function(UserExercise exercise)? updateExercise,
    TResult Function(WorkoutTemplate template)? fetch,
    TResult Function(WorkoutTemplate template)? update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExercises value) addExercises,
    required TResult Function(_DeleteExercise value) deleteExercise,
    required TResult Function(_UpdateExercise value) updateExercise,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Update value) update,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddExercises value)? addExercises,
    TResult? Function(_DeleteExercise value)? deleteExercise,
    TResult? Function(_UpdateExercise value)? updateExercise,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Update value)? update,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddExercises value)? addExercises,
    TResult Function(_DeleteExercise value)? deleteExercise,
    TResult Function(_UpdateExercise value)? updateExercise,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements TemplateManagementEvent {
  const factory _Fetch({required final WorkoutTemplate template}) = _$FetchImpl;

  WorkoutTemplate get template;
  @JsonKey(ignore: true)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkoutTemplate template});

  $WorkoutTemplateCopyWith<$Res> get template;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$TemplateManagementEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? template = null,
  }) {
    return _then(_$UpdateImpl(
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as WorkoutTemplate,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkoutTemplateCopyWith<$Res> get template {
    return $WorkoutTemplateCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value));
    });
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl({required this.template});

  @override
  final WorkoutTemplate template;

  @override
  String toString() {
    return 'TemplateManagementEvent.update(template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @override
  int get hashCode => Object.hash(runtimeType, template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserExercise> exercises) addExercises,
    required TResult Function(UserExercise exercise) deleteExercise,
    required TResult Function(UserExercise exercise) updateExercise,
    required TResult Function(WorkoutTemplate template) fetch,
    required TResult Function(WorkoutTemplate template) update,
  }) {
    return update(template);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(UserExercise exercise)? deleteExercise,
    TResult? Function(UserExercise exercise)? updateExercise,
    TResult? Function(WorkoutTemplate template)? fetch,
    TResult? Function(WorkoutTemplate template)? update,
  }) {
    return update?.call(template);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(UserExercise exercise)? deleteExercise,
    TResult Function(UserExercise exercise)? updateExercise,
    TResult Function(WorkoutTemplate template)? fetch,
    TResult Function(WorkoutTemplate template)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExercises value) addExercises,
    required TResult Function(_DeleteExercise value) deleteExercise,
    required TResult Function(_UpdateExercise value) updateExercise,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddExercises value)? addExercises,
    TResult? Function(_DeleteExercise value)? deleteExercise,
    TResult? Function(_UpdateExercise value)? updateExercise,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddExercises value)? addExercises,
    TResult Function(_DeleteExercise value)? deleteExercise,
    TResult Function(_UpdateExercise value)? updateExercise,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements TemplateManagementEvent {
  const factory _Update({required final WorkoutTemplate template}) =
      _$UpdateImpl;

  WorkoutTemplate get template;
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TemplateManagementState {
  WorkoutTemplate? get template => throw _privateConstructorUsedError;
  BlocStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TemplateManagementStateCopyWith<TemplateManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateManagementStateCopyWith<$Res> {
  factory $TemplateManagementStateCopyWith(TemplateManagementState value,
          $Res Function(TemplateManagementState) then) =
      _$TemplateManagementStateCopyWithImpl<$Res, TemplateManagementState>;
  @useResult
  $Res call(
      {WorkoutTemplate? template, BlocStatus status, String? errorMessage});

  $WorkoutTemplateCopyWith<$Res>? get template;
}

/// @nodoc
class _$TemplateManagementStateCopyWithImpl<$Res,
        $Val extends TemplateManagementState>
    implements $TemplateManagementStateCopyWith<$Res> {
  _$TemplateManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? template = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as WorkoutTemplate?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkoutTemplateCopyWith<$Res>? get template {
    if (_value.template == null) {
      return null;
    }

    return $WorkoutTemplateCopyWith<$Res>(_value.template!, (value) {
      return _then(_value.copyWith(template: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TemplateManagementStateImplCopyWith<$Res>
    implements $TemplateManagementStateCopyWith<$Res> {
  factory _$$TemplateManagementStateImplCopyWith(
          _$TemplateManagementStateImpl value,
          $Res Function(_$TemplateManagementStateImpl) then) =
      __$$TemplateManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WorkoutTemplate? template, BlocStatus status, String? errorMessage});

  @override
  $WorkoutTemplateCopyWith<$Res>? get template;
}

/// @nodoc
class __$$TemplateManagementStateImplCopyWithImpl<$Res>
    extends _$TemplateManagementStateCopyWithImpl<$Res,
        _$TemplateManagementStateImpl>
    implements _$$TemplateManagementStateImplCopyWith<$Res> {
  __$$TemplateManagementStateImplCopyWithImpl(
      _$TemplateManagementStateImpl _value,
      $Res Function(_$TemplateManagementStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? template = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TemplateManagementStateImpl(
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as WorkoutTemplate?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TemplateManagementStateImpl implements _TemplateManagementState {
  _$TemplateManagementStateImpl(
      {this.template, this.status = BlocStatus.idle, this.errorMessage});

  @override
  final WorkoutTemplate? template;
  @override
  @JsonKey()
  final BlocStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TemplateManagementState(template: $template, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateManagementStateImpl &&
            (identical(other.template, template) ||
                other.template == template) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, template, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateManagementStateImplCopyWith<_$TemplateManagementStateImpl>
      get copyWith => __$$TemplateManagementStateImplCopyWithImpl<
          _$TemplateManagementStateImpl>(this, _$identity);
}

abstract class _TemplateManagementState implements TemplateManagementState {
  factory _TemplateManagementState(
      {final WorkoutTemplate? template,
      final BlocStatus status,
      final String? errorMessage}) = _$TemplateManagementStateImpl;

  @override
  WorkoutTemplate? get template;
  @override
  BlocStatus get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$TemplateManagementStateImplCopyWith<_$TemplateManagementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
