// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_exercises_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserExercisesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(UserExercise exercise) create,
    required TResult Function(UserExercise exercise) update,
    required TResult Function(UserExercise exercise) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(UserExercise exercise)? create,
    TResult? Function(UserExercise exercise)? update,
    TResult? Function(UserExercise exercise)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(UserExercise exercise)? create,
    TResult Function(UserExercise exercise)? update,
    TResult Function(UserExercise exercise)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExercisesEventCopyWith<$Res> {
  factory $UserExercisesEventCopyWith(
          UserExercisesEvent value, $Res Function(UserExercisesEvent) then) =
      _$UserExercisesEventCopyWithImpl<$Res, UserExercisesEvent>;
}

/// @nodoc
class _$UserExercisesEventCopyWithImpl<$Res, $Val extends UserExercisesEvent>
    implements $UserExercisesEventCopyWith<$Res> {
  _$UserExercisesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$UserExercisesEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'UserExercisesEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(UserExercise exercise) create,
    required TResult Function(UserExercise exercise) update,
    required TResult Function(UserExercise exercise) delete,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(UserExercise exercise)? create,
    TResult? Function(UserExercise exercise)? update,
    TResult? Function(UserExercise exercise)? delete,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(UserExercise exercise)? create,
    TResult Function(UserExercise exercise)? update,
    TResult Function(UserExercise exercise)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements UserExercisesEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserExercise exercise});

  $UserExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$UserExercisesEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
  }) {
    return _then(_$CreateImpl(
      null == exercise
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

class _$CreateImpl implements _Create {
  const _$CreateImpl(this.exercise);

  @override
  final UserExercise exercise;

  @override
  String toString() {
    return 'UserExercisesEvent.create(exercise: $exercise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(UserExercise exercise) create,
    required TResult Function(UserExercise exercise) update,
    required TResult Function(UserExercise exercise) delete,
  }) {
    return create(exercise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(UserExercise exercise)? create,
    TResult? Function(UserExercise exercise)? update,
    TResult? Function(UserExercise exercise)? delete,
  }) {
    return create?.call(exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(UserExercise exercise)? create,
    TResult Function(UserExercise exercise)? update,
    TResult Function(UserExercise exercise)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements UserExercisesEvent {
  const factory _Create(final UserExercise exercise) = _$CreateImpl;

  UserExercise get exercise;
  @JsonKey(ignore: true)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserExercise exercise});

  $UserExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$UserExercisesEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
  }) {
    return _then(_$UpdateImpl(
      null == exercise
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

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.exercise);

  @override
  final UserExercise exercise;

  @override
  String toString() {
    return 'UserExercisesEvent.update(exercise: $exercise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(UserExercise exercise) create,
    required TResult Function(UserExercise exercise) update,
    required TResult Function(UserExercise exercise) delete,
  }) {
    return update(exercise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(UserExercise exercise)? create,
    TResult? Function(UserExercise exercise)? update,
    TResult? Function(UserExercise exercise)? delete,
  }) {
    return update?.call(exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(UserExercise exercise)? create,
    TResult Function(UserExercise exercise)? update,
    TResult Function(UserExercise exercise)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements UserExercisesEvent {
  const factory _Update(final UserExercise exercise) = _$UpdateImpl;

  UserExercise get exercise;
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserExercise exercise});

  $UserExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$UserExercisesEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
  }) {
    return _then(_$DeleteImpl(
      null == exercise
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

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.exercise);

  @override
  final UserExercise exercise;

  @override
  String toString() {
    return 'UserExercisesEvent.delete(exercise: $exercise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(UserExercise exercise) create,
    required TResult Function(UserExercise exercise) update,
    required TResult Function(UserExercise exercise) delete,
  }) {
    return delete(exercise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(UserExercise exercise)? create,
    TResult? Function(UserExercise exercise)? update,
    TResult? Function(UserExercise exercise)? delete,
  }) {
    return delete?.call(exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(UserExercise exercise)? create,
    TResult Function(UserExercise exercise)? update,
    TResult Function(UserExercise exercise)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements UserExercisesEvent {
  const factory _Delete(final UserExercise exercise) = _$DeleteImpl;

  UserExercise get exercise;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserExercisesState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<UserExercise> get exercises => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserExercisesStateCopyWith<UserExercisesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExercisesStateCopyWith<$Res> {
  factory $UserExercisesStateCopyWith(
          UserExercisesState value, $Res Function(UserExercisesState) then) =
      _$UserExercisesStateCopyWithImpl<$Res, UserExercisesState>;
  @useResult
  $Res call(
      {BlocStatus status, List<UserExercise> exercises, String? errorMessage});
}

/// @nodoc
class _$UserExercisesStateCopyWithImpl<$Res, $Val extends UserExercisesState>
    implements $UserExercisesStateCopyWith<$Res> {
  _$UserExercisesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? exercises = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<UserExercise>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserExerciseStateImplCopyWith<$Res>
    implements $UserExercisesStateCopyWith<$Res> {
  factory _$$UserExerciseStateImplCopyWith(_$UserExerciseStateImpl value,
          $Res Function(_$UserExerciseStateImpl) then) =
      __$$UserExerciseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status, List<UserExercise> exercises, String? errorMessage});
}

/// @nodoc
class __$$UserExerciseStateImplCopyWithImpl<$Res>
    extends _$UserExercisesStateCopyWithImpl<$Res, _$UserExerciseStateImpl>
    implements _$$UserExerciseStateImplCopyWith<$Res> {
  __$$UserExerciseStateImplCopyWithImpl(_$UserExerciseStateImpl _value,
      $Res Function(_$UserExerciseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? exercises = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$UserExerciseStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<UserExercise>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserExerciseStateImpl implements _UserExerciseState {
  const _$UserExerciseStateImpl(
      {this.status = BlocStatus.idle,
      final List<UserExercise> exercises = const <UserExercise>[],
      this.errorMessage})
      : _exercises = exercises;

  @override
  @JsonKey()
  final BlocStatus status;
  final List<UserExercise> _exercises;
  @override
  @JsonKey()
  List<UserExercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'UserExercisesState(status: $status, exercises: $exercises, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserExerciseStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_exercises), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserExerciseStateImplCopyWith<_$UserExerciseStateImpl> get copyWith =>
      __$$UserExerciseStateImplCopyWithImpl<_$UserExerciseStateImpl>(
          this, _$identity);
}

abstract class _UserExerciseState implements UserExercisesState {
  const factory _UserExerciseState(
      {final BlocStatus status,
      final List<UserExercise> exercises,
      final String? errorMessage}) = _$UserExerciseStateImpl;

  @override
  BlocStatus get status;
  @override
  List<UserExercise> get exercises;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$UserExerciseStateImplCopyWith<_$UserExerciseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
