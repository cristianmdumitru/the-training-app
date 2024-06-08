// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionExercise _$SessionExerciseFromJson(Map<String, dynamic> json) {
  return _SessionExercise.fromJson(json);
}

/// @nodoc
mixin _$SessionExercise {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  UserExercise get baseExercise => throw _privateConstructorUsedError;
  @HiveField(2)
  String get sessionId => throw _privateConstructorUsedError;
  @HiveField(3)
  List<ExerciseSet> get sets => throw _privateConstructorUsedError;
  @HiveField(4)
  Map<MuscleGroup, int> get setsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionExerciseCopyWith<SessionExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionExerciseCopyWith<$Res> {
  factory $SessionExerciseCopyWith(
          SessionExercise value, $Res Function(SessionExercise) then) =
      _$SessionExerciseCopyWithImpl<$Res, SessionExercise>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) UserExercise baseExercise,
      @HiveField(2) String sessionId,
      @HiveField(3) List<ExerciseSet> sets,
      @HiveField(4) Map<MuscleGroup, int> setsCount});

  $UserExerciseCopyWith<$Res> get baseExercise;
}

/// @nodoc
class _$SessionExerciseCopyWithImpl<$Res, $Val extends SessionExercise>
    implements $SessionExerciseCopyWith<$Res> {
  _$SessionExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? baseExercise = null,
    Object? sessionId = null,
    Object? sets = null,
    Object? setsCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      baseExercise: null == baseExercise
          ? _value.baseExercise
          : baseExercise // ignore: cast_nullable_to_non_nullable
              as UserExercise,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSet>,
      setsCount: null == setsCount
          ? _value.setsCount
          : setsCount // ignore: cast_nullable_to_non_nullable
              as Map<MuscleGroup, int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserExerciseCopyWith<$Res> get baseExercise {
    return $UserExerciseCopyWith<$Res>(_value.baseExercise, (value) {
      return _then(_value.copyWith(baseExercise: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionExerciseImplCopyWith<$Res>
    implements $SessionExerciseCopyWith<$Res> {
  factory _$$SessionExerciseImplCopyWith(_$SessionExerciseImpl value,
          $Res Function(_$SessionExerciseImpl) then) =
      __$$SessionExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) UserExercise baseExercise,
      @HiveField(2) String sessionId,
      @HiveField(3) List<ExerciseSet> sets,
      @HiveField(4) Map<MuscleGroup, int> setsCount});

  @override
  $UserExerciseCopyWith<$Res> get baseExercise;
}

/// @nodoc
class __$$SessionExerciseImplCopyWithImpl<$Res>
    extends _$SessionExerciseCopyWithImpl<$Res, _$SessionExerciseImpl>
    implements _$$SessionExerciseImplCopyWith<$Res> {
  __$$SessionExerciseImplCopyWithImpl(
      _$SessionExerciseImpl _value, $Res Function(_$SessionExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? baseExercise = null,
    Object? sessionId = null,
    Object? sets = null,
    Object? setsCount = null,
  }) {
    return _then(_$SessionExerciseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      baseExercise: null == baseExercise
          ? _value.baseExercise
          : baseExercise // ignore: cast_nullable_to_non_nullable
              as UserExercise,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      sets: null == sets
          ? _value._sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSet>,
      setsCount: null == setsCount
          ? _value._setsCount
          : setsCount // ignore: cast_nullable_to_non_nullable
              as Map<MuscleGroup, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3)
class _$SessionExerciseImpl implements _SessionExercise {
  _$SessionExerciseImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.baseExercise,
      @HiveField(2) required this.sessionId,
      @HiveField(3) required final List<ExerciseSet> sets,
      @HiveField(4) required final Map<MuscleGroup, int> setsCount})
      : _sets = sets,
        _setsCount = setsCount;

  factory _$SessionExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionExerciseImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final UserExercise baseExercise;
  @override
  @HiveField(2)
  final String sessionId;
  final List<ExerciseSet> _sets;
  @override
  @HiveField(3)
  List<ExerciseSet> get sets {
    if (_sets is EqualUnmodifiableListView) return _sets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sets);
  }

  final Map<MuscleGroup, int> _setsCount;
  @override
  @HiveField(4)
  Map<MuscleGroup, int> get setsCount {
    if (_setsCount is EqualUnmodifiableMapView) return _setsCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_setsCount);
  }

  @override
  String toString() {
    return 'SessionExercise(id: $id, baseExercise: $baseExercise, sessionId: $sessionId, sets: $sets, setsCount: $setsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.baseExercise, baseExercise) ||
                other.baseExercise == baseExercise) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality().equals(other._sets, _sets) &&
            const DeepCollectionEquality()
                .equals(other._setsCount, _setsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      baseExercise,
      sessionId,
      const DeepCollectionEquality().hash(_sets),
      const DeepCollectionEquality().hash(_setsCount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionExerciseImplCopyWith<_$SessionExerciseImpl> get copyWith =>
      __$$SessionExerciseImplCopyWithImpl<_$SessionExerciseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionExerciseImplToJson(
      this,
    );
  }
}

abstract class _SessionExercise implements SessionExercise {
  factory _SessionExercise(
          {@HiveField(0) required final String id,
          @HiveField(1) required final UserExercise baseExercise,
          @HiveField(2) required final String sessionId,
          @HiveField(3) required final List<ExerciseSet> sets,
          @HiveField(4) required final Map<MuscleGroup, int> setsCount}) =
      _$SessionExerciseImpl;

  factory _SessionExercise.fromJson(Map<String, dynamic> json) =
      _$SessionExerciseImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  UserExercise get baseExercise;
  @override
  @HiveField(2)
  String get sessionId;
  @override
  @HiveField(3)
  List<ExerciseSet> get sets;
  @override
  @HiveField(4)
  Map<MuscleGroup, int> get setsCount;
  @override
  @JsonKey(ignore: true)
  _$$SessionExerciseImplCopyWith<_$SessionExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
