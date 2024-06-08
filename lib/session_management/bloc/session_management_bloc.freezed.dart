// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SessionManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserExercise> exercises) addExercises,
    required TResult Function(SessionExercise exercise) deleteExercise,
    required TResult Function(SessionExercise exercise) updateExercise,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        addExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        deleteExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        updateExerciseSet,
    required TResult Function(TrainingSession session) fetch,
    required TResult Function(TrainingSession session) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(SessionExercise exercise)? deleteExercise,
    TResult? Function(SessionExercise exercise)? updateExercise,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult? Function(TrainingSession session)? fetch,
    TResult? Function(TrainingSession session)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(SessionExercise exercise)? deleteExercise,
    TResult Function(SessionExercise exercise)? updateExercise,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult Function(TrainingSession session)? fetch,
    TResult Function(TrainingSession session)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExercises value) addExercises,
    required TResult Function(_DeleteExercise value) deleteExercise,
    required TResult Function(_UpdateExercise value) updateExercise,
    required TResult Function(_AddExerciseSet value) addExerciseSet,
    required TResult Function(_DeleteExerciseSet value) deleteExerciseSet,
    required TResult Function(_UpdateExerciseSet value) updateExerciseSet,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddExercises value)? addExercises,
    TResult? Function(_DeleteExercise value)? deleteExercise,
    TResult? Function(_UpdateExercise value)? updateExercise,
    TResult? Function(_AddExerciseSet value)? addExerciseSet,
    TResult? Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult? Function(_UpdateExerciseSet value)? updateExerciseSet,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddExercises value)? addExercises,
    TResult Function(_DeleteExercise value)? deleteExercise,
    TResult Function(_UpdateExercise value)? updateExercise,
    TResult Function(_AddExerciseSet value)? addExerciseSet,
    TResult Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult Function(_UpdateExerciseSet value)? updateExerciseSet,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionManagementEventCopyWith<$Res> {
  factory $SessionManagementEventCopyWith(SessionManagementEvent value,
          $Res Function(SessionManagementEvent) then) =
      _$SessionManagementEventCopyWithImpl<$Res, SessionManagementEvent>;
}

/// @nodoc
class _$SessionManagementEventCopyWithImpl<$Res,
        $Val extends SessionManagementEvent>
    implements $SessionManagementEventCopyWith<$Res> {
  _$SessionManagementEventCopyWithImpl(this._value, this._then);

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
    extends _$SessionManagementEventCopyWithImpl<$Res, _$AddExercisesImpl>
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
    return 'SessionManagementEvent.addExercises(exercises: $exercises)';
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
    required TResult Function(SessionExercise exercise) deleteExercise,
    required TResult Function(SessionExercise exercise) updateExercise,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        addExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        deleteExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        updateExerciseSet,
    required TResult Function(TrainingSession session) fetch,
    required TResult Function(TrainingSession session) update,
  }) {
    return addExercises(exercises);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(SessionExercise exercise)? deleteExercise,
    TResult? Function(SessionExercise exercise)? updateExercise,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult? Function(TrainingSession session)? fetch,
    TResult? Function(TrainingSession session)? update,
  }) {
    return addExercises?.call(exercises);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(SessionExercise exercise)? deleteExercise,
    TResult Function(SessionExercise exercise)? updateExercise,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult Function(TrainingSession session)? fetch,
    TResult Function(TrainingSession session)? update,
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
    required TResult Function(_AddExerciseSet value) addExerciseSet,
    required TResult Function(_DeleteExerciseSet value) deleteExerciseSet,
    required TResult Function(_UpdateExerciseSet value) updateExerciseSet,
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
    TResult? Function(_AddExerciseSet value)? addExerciseSet,
    TResult? Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult? Function(_UpdateExerciseSet value)? updateExerciseSet,
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
    TResult Function(_AddExerciseSet value)? addExerciseSet,
    TResult Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult Function(_UpdateExerciseSet value)? updateExerciseSet,
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

abstract class _AddExercises implements SessionManagementEvent {
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
  $Res call({SessionExercise exercise});

  $SessionExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$DeleteExerciseImplCopyWithImpl<$Res>
    extends _$SessionManagementEventCopyWithImpl<$Res, _$DeleteExerciseImpl>
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
              as SessionExercise,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionExerciseCopyWith<$Res> get exercise {
    return $SessionExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

/// @nodoc

class _$DeleteExerciseImpl implements _DeleteExercise {
  const _$DeleteExerciseImpl({required this.exercise});

  @override
  final SessionExercise exercise;

  @override
  String toString() {
    return 'SessionManagementEvent.deleteExercise(exercise: $exercise)';
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
    required TResult Function(SessionExercise exercise) deleteExercise,
    required TResult Function(SessionExercise exercise) updateExercise,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        addExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        deleteExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        updateExerciseSet,
    required TResult Function(TrainingSession session) fetch,
    required TResult Function(TrainingSession session) update,
  }) {
    return deleteExercise(exercise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(SessionExercise exercise)? deleteExercise,
    TResult? Function(SessionExercise exercise)? updateExercise,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult? Function(TrainingSession session)? fetch,
    TResult? Function(TrainingSession session)? update,
  }) {
    return deleteExercise?.call(exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(SessionExercise exercise)? deleteExercise,
    TResult Function(SessionExercise exercise)? updateExercise,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult Function(TrainingSession session)? fetch,
    TResult Function(TrainingSession session)? update,
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
    required TResult Function(_AddExerciseSet value) addExerciseSet,
    required TResult Function(_DeleteExerciseSet value) deleteExerciseSet,
    required TResult Function(_UpdateExerciseSet value) updateExerciseSet,
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
    TResult? Function(_AddExerciseSet value)? addExerciseSet,
    TResult? Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult? Function(_UpdateExerciseSet value)? updateExerciseSet,
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
    TResult Function(_AddExerciseSet value)? addExerciseSet,
    TResult Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult Function(_UpdateExerciseSet value)? updateExerciseSet,
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

abstract class _DeleteExercise implements SessionManagementEvent {
  const factory _DeleteExercise({required final SessionExercise exercise}) =
      _$DeleteExerciseImpl;

  SessionExercise get exercise;
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
  $Res call({SessionExercise exercise});

  $SessionExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$UpdateExerciseImplCopyWithImpl<$Res>
    extends _$SessionManagementEventCopyWithImpl<$Res, _$UpdateExerciseImpl>
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
              as SessionExercise,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionExerciseCopyWith<$Res> get exercise {
    return $SessionExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

/// @nodoc

class _$UpdateExerciseImpl implements _UpdateExercise {
  const _$UpdateExerciseImpl({required this.exercise});

  @override
  final SessionExercise exercise;

  @override
  String toString() {
    return 'SessionManagementEvent.updateExercise(exercise: $exercise)';
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
    required TResult Function(SessionExercise exercise) deleteExercise,
    required TResult Function(SessionExercise exercise) updateExercise,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        addExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        deleteExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        updateExerciseSet,
    required TResult Function(TrainingSession session) fetch,
    required TResult Function(TrainingSession session) update,
  }) {
    return updateExercise(exercise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(SessionExercise exercise)? deleteExercise,
    TResult? Function(SessionExercise exercise)? updateExercise,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult? Function(TrainingSession session)? fetch,
    TResult? Function(TrainingSession session)? update,
  }) {
    return updateExercise?.call(exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(SessionExercise exercise)? deleteExercise,
    TResult Function(SessionExercise exercise)? updateExercise,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult Function(TrainingSession session)? fetch,
    TResult Function(TrainingSession session)? update,
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
    required TResult Function(_AddExerciseSet value) addExerciseSet,
    required TResult Function(_DeleteExerciseSet value) deleteExerciseSet,
    required TResult Function(_UpdateExerciseSet value) updateExerciseSet,
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
    TResult? Function(_AddExerciseSet value)? addExerciseSet,
    TResult? Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult? Function(_UpdateExerciseSet value)? updateExerciseSet,
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
    TResult Function(_AddExerciseSet value)? addExerciseSet,
    TResult Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult Function(_UpdateExerciseSet value)? updateExerciseSet,
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

abstract class _UpdateExercise implements SessionManagementEvent {
  const factory _UpdateExercise({required final SessionExercise exercise}) =
      _$UpdateExerciseImpl;

  SessionExercise get exercise;
  @JsonKey(ignore: true)
  _$$UpdateExerciseImplCopyWith<_$UpdateExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddExerciseSetImplCopyWith<$Res> {
  factory _$$AddExerciseSetImplCopyWith(_$AddExerciseSetImpl value,
          $Res Function(_$AddExerciseSetImpl) then) =
      __$$AddExerciseSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SessionExercise exercise, ExerciseSet exerciseSet});

  $SessionExerciseCopyWith<$Res> get exercise;
  $ExerciseSetCopyWith<$Res> get exerciseSet;
}

/// @nodoc
class __$$AddExerciseSetImplCopyWithImpl<$Res>
    extends _$SessionManagementEventCopyWithImpl<$Res, _$AddExerciseSetImpl>
    implements _$$AddExerciseSetImplCopyWith<$Res> {
  __$$AddExerciseSetImplCopyWithImpl(
      _$AddExerciseSetImpl _value, $Res Function(_$AddExerciseSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
    Object? exerciseSet = null,
  }) {
    return _then(_$AddExerciseSetImpl(
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as SessionExercise,
      exerciseSet: null == exerciseSet
          ? _value.exerciseSet
          : exerciseSet // ignore: cast_nullable_to_non_nullable
              as ExerciseSet,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionExerciseCopyWith<$Res> get exercise {
    return $SessionExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExerciseSetCopyWith<$Res> get exerciseSet {
    return $ExerciseSetCopyWith<$Res>(_value.exerciseSet, (value) {
      return _then(_value.copyWith(exerciseSet: value));
    });
  }
}

/// @nodoc

class _$AddExerciseSetImpl implements _AddExerciseSet {
  const _$AddExerciseSetImpl(
      {required this.exercise, required this.exerciseSet});

  @override
  final SessionExercise exercise;
  @override
  final ExerciseSet exerciseSet;

  @override
  String toString() {
    return 'SessionManagementEvent.addExerciseSet(exercise: $exercise, exerciseSet: $exerciseSet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExerciseSetImpl &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise) &&
            (identical(other.exerciseSet, exerciseSet) ||
                other.exerciseSet == exerciseSet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercise, exerciseSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExerciseSetImplCopyWith<_$AddExerciseSetImpl> get copyWith =>
      __$$AddExerciseSetImplCopyWithImpl<_$AddExerciseSetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserExercise> exercises) addExercises,
    required TResult Function(SessionExercise exercise) deleteExercise,
    required TResult Function(SessionExercise exercise) updateExercise,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        addExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        deleteExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        updateExerciseSet,
    required TResult Function(TrainingSession session) fetch,
    required TResult Function(TrainingSession session) update,
  }) {
    return addExerciseSet(exercise, exerciseSet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(SessionExercise exercise)? deleteExercise,
    TResult? Function(SessionExercise exercise)? updateExercise,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult? Function(TrainingSession session)? fetch,
    TResult? Function(TrainingSession session)? update,
  }) {
    return addExerciseSet?.call(exercise, exerciseSet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(SessionExercise exercise)? deleteExercise,
    TResult Function(SessionExercise exercise)? updateExercise,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult Function(TrainingSession session)? fetch,
    TResult Function(TrainingSession session)? update,
    required TResult orElse(),
  }) {
    if (addExerciseSet != null) {
      return addExerciseSet(exercise, exerciseSet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExercises value) addExercises,
    required TResult Function(_DeleteExercise value) deleteExercise,
    required TResult Function(_UpdateExercise value) updateExercise,
    required TResult Function(_AddExerciseSet value) addExerciseSet,
    required TResult Function(_DeleteExerciseSet value) deleteExerciseSet,
    required TResult Function(_UpdateExerciseSet value) updateExerciseSet,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Update value) update,
  }) {
    return addExerciseSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddExercises value)? addExercises,
    TResult? Function(_DeleteExercise value)? deleteExercise,
    TResult? Function(_UpdateExercise value)? updateExercise,
    TResult? Function(_AddExerciseSet value)? addExerciseSet,
    TResult? Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult? Function(_UpdateExerciseSet value)? updateExerciseSet,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Update value)? update,
  }) {
    return addExerciseSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddExercises value)? addExercises,
    TResult Function(_DeleteExercise value)? deleteExercise,
    TResult Function(_UpdateExercise value)? updateExercise,
    TResult Function(_AddExerciseSet value)? addExerciseSet,
    TResult Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult Function(_UpdateExerciseSet value)? updateExerciseSet,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (addExerciseSet != null) {
      return addExerciseSet(this);
    }
    return orElse();
  }
}

abstract class _AddExerciseSet implements SessionManagementEvent {
  const factory _AddExerciseSet(
      {required final SessionExercise exercise,
      required final ExerciseSet exerciseSet}) = _$AddExerciseSetImpl;

  SessionExercise get exercise;
  ExerciseSet get exerciseSet;
  @JsonKey(ignore: true)
  _$$AddExerciseSetImplCopyWith<_$AddExerciseSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteExerciseSetImplCopyWith<$Res> {
  factory _$$DeleteExerciseSetImplCopyWith(_$DeleteExerciseSetImpl value,
          $Res Function(_$DeleteExerciseSetImpl) then) =
      __$$DeleteExerciseSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SessionExercise exercise, ExerciseSet exerciseSet});

  $SessionExerciseCopyWith<$Res> get exercise;
  $ExerciseSetCopyWith<$Res> get exerciseSet;
}

/// @nodoc
class __$$DeleteExerciseSetImplCopyWithImpl<$Res>
    extends _$SessionManagementEventCopyWithImpl<$Res, _$DeleteExerciseSetImpl>
    implements _$$DeleteExerciseSetImplCopyWith<$Res> {
  __$$DeleteExerciseSetImplCopyWithImpl(_$DeleteExerciseSetImpl _value,
      $Res Function(_$DeleteExerciseSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
    Object? exerciseSet = null,
  }) {
    return _then(_$DeleteExerciseSetImpl(
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as SessionExercise,
      exerciseSet: null == exerciseSet
          ? _value.exerciseSet
          : exerciseSet // ignore: cast_nullable_to_non_nullable
              as ExerciseSet,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionExerciseCopyWith<$Res> get exercise {
    return $SessionExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExerciseSetCopyWith<$Res> get exerciseSet {
    return $ExerciseSetCopyWith<$Res>(_value.exerciseSet, (value) {
      return _then(_value.copyWith(exerciseSet: value));
    });
  }
}

/// @nodoc

class _$DeleteExerciseSetImpl implements _DeleteExerciseSet {
  const _$DeleteExerciseSetImpl(
      {required this.exercise, required this.exerciseSet});

  @override
  final SessionExercise exercise;
  @override
  final ExerciseSet exerciseSet;

  @override
  String toString() {
    return 'SessionManagementEvent.deleteExerciseSet(exercise: $exercise, exerciseSet: $exerciseSet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteExerciseSetImpl &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise) &&
            (identical(other.exerciseSet, exerciseSet) ||
                other.exerciseSet == exerciseSet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercise, exerciseSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteExerciseSetImplCopyWith<_$DeleteExerciseSetImpl> get copyWith =>
      __$$DeleteExerciseSetImplCopyWithImpl<_$DeleteExerciseSetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserExercise> exercises) addExercises,
    required TResult Function(SessionExercise exercise) deleteExercise,
    required TResult Function(SessionExercise exercise) updateExercise,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        addExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        deleteExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        updateExerciseSet,
    required TResult Function(TrainingSession session) fetch,
    required TResult Function(TrainingSession session) update,
  }) {
    return deleteExerciseSet(exercise, exerciseSet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(SessionExercise exercise)? deleteExercise,
    TResult? Function(SessionExercise exercise)? updateExercise,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult? Function(TrainingSession session)? fetch,
    TResult? Function(TrainingSession session)? update,
  }) {
    return deleteExerciseSet?.call(exercise, exerciseSet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(SessionExercise exercise)? deleteExercise,
    TResult Function(SessionExercise exercise)? updateExercise,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult Function(TrainingSession session)? fetch,
    TResult Function(TrainingSession session)? update,
    required TResult orElse(),
  }) {
    if (deleteExerciseSet != null) {
      return deleteExerciseSet(exercise, exerciseSet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExercises value) addExercises,
    required TResult Function(_DeleteExercise value) deleteExercise,
    required TResult Function(_UpdateExercise value) updateExercise,
    required TResult Function(_AddExerciseSet value) addExerciseSet,
    required TResult Function(_DeleteExerciseSet value) deleteExerciseSet,
    required TResult Function(_UpdateExerciseSet value) updateExerciseSet,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Update value) update,
  }) {
    return deleteExerciseSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddExercises value)? addExercises,
    TResult? Function(_DeleteExercise value)? deleteExercise,
    TResult? Function(_UpdateExercise value)? updateExercise,
    TResult? Function(_AddExerciseSet value)? addExerciseSet,
    TResult? Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult? Function(_UpdateExerciseSet value)? updateExerciseSet,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Update value)? update,
  }) {
    return deleteExerciseSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddExercises value)? addExercises,
    TResult Function(_DeleteExercise value)? deleteExercise,
    TResult Function(_UpdateExercise value)? updateExercise,
    TResult Function(_AddExerciseSet value)? addExerciseSet,
    TResult Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult Function(_UpdateExerciseSet value)? updateExerciseSet,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (deleteExerciseSet != null) {
      return deleteExerciseSet(this);
    }
    return orElse();
  }
}

abstract class _DeleteExerciseSet implements SessionManagementEvent {
  const factory _DeleteExerciseSet(
      {required final SessionExercise exercise,
      required final ExerciseSet exerciseSet}) = _$DeleteExerciseSetImpl;

  SessionExercise get exercise;
  ExerciseSet get exerciseSet;
  @JsonKey(ignore: true)
  _$$DeleteExerciseSetImplCopyWith<_$DeleteExerciseSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateExerciseSetImplCopyWith<$Res> {
  factory _$$UpdateExerciseSetImplCopyWith(_$UpdateExerciseSetImpl value,
          $Res Function(_$UpdateExerciseSetImpl) then) =
      __$$UpdateExerciseSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SessionExercise exercise, ExerciseSet exerciseSet});

  $SessionExerciseCopyWith<$Res> get exercise;
  $ExerciseSetCopyWith<$Res> get exerciseSet;
}

/// @nodoc
class __$$UpdateExerciseSetImplCopyWithImpl<$Res>
    extends _$SessionManagementEventCopyWithImpl<$Res, _$UpdateExerciseSetImpl>
    implements _$$UpdateExerciseSetImplCopyWith<$Res> {
  __$$UpdateExerciseSetImplCopyWithImpl(_$UpdateExerciseSetImpl _value,
      $Res Function(_$UpdateExerciseSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
    Object? exerciseSet = null,
  }) {
    return _then(_$UpdateExerciseSetImpl(
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as SessionExercise,
      exerciseSet: null == exerciseSet
          ? _value.exerciseSet
          : exerciseSet // ignore: cast_nullable_to_non_nullable
              as ExerciseSet,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionExerciseCopyWith<$Res> get exercise {
    return $SessionExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExerciseSetCopyWith<$Res> get exerciseSet {
    return $ExerciseSetCopyWith<$Res>(_value.exerciseSet, (value) {
      return _then(_value.copyWith(exerciseSet: value));
    });
  }
}

/// @nodoc

class _$UpdateExerciseSetImpl implements _UpdateExerciseSet {
  const _$UpdateExerciseSetImpl(
      {required this.exercise, required this.exerciseSet});

  @override
  final SessionExercise exercise;
  @override
  final ExerciseSet exerciseSet;

  @override
  String toString() {
    return 'SessionManagementEvent.updateExerciseSet(exercise: $exercise, exerciseSet: $exerciseSet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateExerciseSetImpl &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise) &&
            (identical(other.exerciseSet, exerciseSet) ||
                other.exerciseSet == exerciseSet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercise, exerciseSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateExerciseSetImplCopyWith<_$UpdateExerciseSetImpl> get copyWith =>
      __$$UpdateExerciseSetImplCopyWithImpl<_$UpdateExerciseSetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserExercise> exercises) addExercises,
    required TResult Function(SessionExercise exercise) deleteExercise,
    required TResult Function(SessionExercise exercise) updateExercise,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        addExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        deleteExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        updateExerciseSet,
    required TResult Function(TrainingSession session) fetch,
    required TResult Function(TrainingSession session) update,
  }) {
    return updateExerciseSet(exercise, exerciseSet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(SessionExercise exercise)? deleteExercise,
    TResult? Function(SessionExercise exercise)? updateExercise,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult? Function(TrainingSession session)? fetch,
    TResult? Function(TrainingSession session)? update,
  }) {
    return updateExerciseSet?.call(exercise, exerciseSet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(SessionExercise exercise)? deleteExercise,
    TResult Function(SessionExercise exercise)? updateExercise,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult Function(TrainingSession session)? fetch,
    TResult Function(TrainingSession session)? update,
    required TResult orElse(),
  }) {
    if (updateExerciseSet != null) {
      return updateExerciseSet(exercise, exerciseSet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExercises value) addExercises,
    required TResult Function(_DeleteExercise value) deleteExercise,
    required TResult Function(_UpdateExercise value) updateExercise,
    required TResult Function(_AddExerciseSet value) addExerciseSet,
    required TResult Function(_DeleteExerciseSet value) deleteExerciseSet,
    required TResult Function(_UpdateExerciseSet value) updateExerciseSet,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Update value) update,
  }) {
    return updateExerciseSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddExercises value)? addExercises,
    TResult? Function(_DeleteExercise value)? deleteExercise,
    TResult? Function(_UpdateExercise value)? updateExercise,
    TResult? Function(_AddExerciseSet value)? addExerciseSet,
    TResult? Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult? Function(_UpdateExerciseSet value)? updateExerciseSet,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Update value)? update,
  }) {
    return updateExerciseSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddExercises value)? addExercises,
    TResult Function(_DeleteExercise value)? deleteExercise,
    TResult Function(_UpdateExercise value)? updateExercise,
    TResult Function(_AddExerciseSet value)? addExerciseSet,
    TResult Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult Function(_UpdateExerciseSet value)? updateExerciseSet,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (updateExerciseSet != null) {
      return updateExerciseSet(this);
    }
    return orElse();
  }
}

abstract class _UpdateExerciseSet implements SessionManagementEvent {
  const factory _UpdateExerciseSet(
      {required final SessionExercise exercise,
      required final ExerciseSet exerciseSet}) = _$UpdateExerciseSetImpl;

  SessionExercise get exercise;
  ExerciseSet get exerciseSet;
  @JsonKey(ignore: true)
  _$$UpdateExerciseSetImplCopyWith<_$UpdateExerciseSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrainingSession session});

  $TrainingSessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$SessionManagementEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_$FetchImpl(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as TrainingSession,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TrainingSessionCopyWith<$Res> get session {
    return $TrainingSessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl({required this.session});

  @override
  final TrainingSession session;

  @override
  String toString() {
    return 'SessionManagementEvent.fetch(session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserExercise> exercises) addExercises,
    required TResult Function(SessionExercise exercise) deleteExercise,
    required TResult Function(SessionExercise exercise) updateExercise,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        addExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        deleteExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        updateExerciseSet,
    required TResult Function(TrainingSession session) fetch,
    required TResult Function(TrainingSession session) update,
  }) {
    return fetch(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(SessionExercise exercise)? deleteExercise,
    TResult? Function(SessionExercise exercise)? updateExercise,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult? Function(TrainingSession session)? fetch,
    TResult? Function(TrainingSession session)? update,
  }) {
    return fetch?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(SessionExercise exercise)? deleteExercise,
    TResult Function(SessionExercise exercise)? updateExercise,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult Function(TrainingSession session)? fetch,
    TResult Function(TrainingSession session)? update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExercises value) addExercises,
    required TResult Function(_DeleteExercise value) deleteExercise,
    required TResult Function(_UpdateExercise value) updateExercise,
    required TResult Function(_AddExerciseSet value) addExerciseSet,
    required TResult Function(_DeleteExerciseSet value) deleteExerciseSet,
    required TResult Function(_UpdateExerciseSet value) updateExerciseSet,
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
    TResult? Function(_AddExerciseSet value)? addExerciseSet,
    TResult? Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult? Function(_UpdateExerciseSet value)? updateExerciseSet,
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
    TResult Function(_AddExerciseSet value)? addExerciseSet,
    TResult Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult Function(_UpdateExerciseSet value)? updateExerciseSet,
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

abstract class _Fetch implements SessionManagementEvent {
  const factory _Fetch({required final TrainingSession session}) = _$FetchImpl;

  TrainingSession get session;
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
  $Res call({TrainingSession session});

  $TrainingSessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$SessionManagementEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_$UpdateImpl(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as TrainingSession,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TrainingSessionCopyWith<$Res> get session {
    return $TrainingSessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl({required this.session});

  @override
  final TrainingSession session;

  @override
  String toString() {
    return 'SessionManagementEvent.update(session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserExercise> exercises) addExercises,
    required TResult Function(SessionExercise exercise) deleteExercise,
    required TResult Function(SessionExercise exercise) updateExercise,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        addExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        deleteExerciseSet,
    required TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)
        updateExerciseSet,
    required TResult Function(TrainingSession session) fetch,
    required TResult Function(TrainingSession session) update,
  }) {
    return update(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserExercise> exercises)? addExercises,
    TResult? Function(SessionExercise exercise)? deleteExercise,
    TResult? Function(SessionExercise exercise)? updateExercise,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult? Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult? Function(TrainingSession session)? fetch,
    TResult? Function(TrainingSession session)? update,
  }) {
    return update?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserExercise> exercises)? addExercises,
    TResult Function(SessionExercise exercise)? deleteExercise,
    TResult Function(SessionExercise exercise)? updateExercise,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        addExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        deleteExerciseSet,
    TResult Function(SessionExercise exercise, ExerciseSet exerciseSet)?
        updateExerciseSet,
    TResult Function(TrainingSession session)? fetch,
    TResult Function(TrainingSession session)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExercises value) addExercises,
    required TResult Function(_DeleteExercise value) deleteExercise,
    required TResult Function(_UpdateExercise value) updateExercise,
    required TResult Function(_AddExerciseSet value) addExerciseSet,
    required TResult Function(_DeleteExerciseSet value) deleteExerciseSet,
    required TResult Function(_UpdateExerciseSet value) updateExerciseSet,
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
    TResult? Function(_AddExerciseSet value)? addExerciseSet,
    TResult? Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult? Function(_UpdateExerciseSet value)? updateExerciseSet,
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
    TResult Function(_AddExerciseSet value)? addExerciseSet,
    TResult Function(_DeleteExerciseSet value)? deleteExerciseSet,
    TResult Function(_UpdateExerciseSet value)? updateExerciseSet,
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

abstract class _Update implements SessionManagementEvent {
  const factory _Update({required final TrainingSession session}) =
      _$UpdateImpl;

  TrainingSession get session;
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SessionManagementState {
  TrainingSession? get session => throw _privateConstructorUsedError;
  BlocStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionManagementStateCopyWith<SessionManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionManagementStateCopyWith<$Res> {
  factory $SessionManagementStateCopyWith(SessionManagementState value,
          $Res Function(SessionManagementState) then) =
      _$SessionManagementStateCopyWithImpl<$Res, SessionManagementState>;
  @useResult
  $Res call(
      {TrainingSession? session, BlocStatus status, String? errorMessage});

  $TrainingSessionCopyWith<$Res>? get session;
}

/// @nodoc
class _$SessionManagementStateCopyWithImpl<$Res,
        $Val extends SessionManagementState>
    implements $SessionManagementStateCopyWith<$Res> {
  _$SessionManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as TrainingSession?,
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
  $TrainingSessionCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $TrainingSessionCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionManagementStateImplCopyWith<$Res>
    implements $SessionManagementStateCopyWith<$Res> {
  factory _$$SessionManagementStateImplCopyWith(
          _$SessionManagementStateImpl value,
          $Res Function(_$SessionManagementStateImpl) then) =
      __$$SessionManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrainingSession? session, BlocStatus status, String? errorMessage});

  @override
  $TrainingSessionCopyWith<$Res>? get session;
}

/// @nodoc
class __$$SessionManagementStateImplCopyWithImpl<$Res>
    extends _$SessionManagementStateCopyWithImpl<$Res,
        _$SessionManagementStateImpl>
    implements _$$SessionManagementStateImplCopyWith<$Res> {
  __$$SessionManagementStateImplCopyWithImpl(
      _$SessionManagementStateImpl _value,
      $Res Function(_$SessionManagementStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SessionManagementStateImpl(
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as TrainingSession?,
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

class _$SessionManagementStateImpl implements _SessionManagementState {
  _$SessionManagementStateImpl(
      {this.session, this.status = BlocStatus.idle, this.errorMessage});

  @override
  final TrainingSession? session;
  @override
  @JsonKey()
  final BlocStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SessionManagementState(session: $session, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionManagementStateImpl &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionManagementStateImplCopyWith<_$SessionManagementStateImpl>
      get copyWith => __$$SessionManagementStateImplCopyWithImpl<
          _$SessionManagementStateImpl>(this, _$identity);
}

abstract class _SessionManagementState implements SessionManagementState {
  factory _SessionManagementState(
      {final TrainingSession? session,
      final BlocStatus status,
      final String? errorMessage}) = _$SessionManagementStateImpl;

  @override
  TrainingSession? get session;
  @override
  BlocStatus get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SessionManagementStateImplCopyWith<_$SessionManagementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
