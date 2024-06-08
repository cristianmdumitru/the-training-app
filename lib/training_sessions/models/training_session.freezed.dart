// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainingSession _$TrainingSessionFromJson(Map<String, dynamic> json) {
  return _TrainingSession.fromJson(json);
}

/// @nodoc
mixin _$TrainingSession {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  List<SessionExercise> get exercises => throw _privateConstructorUsedError;
  @HiveField(3)
  int get createdAt => throw _privateConstructorUsedError;
  @HiveField(4)
  int get updatedAt => throw _privateConstructorUsedError;
  @HiveField(5)
  Map<MuscleGroup, int> get setsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingSessionCopyWith<TrainingSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingSessionCopyWith<$Res> {
  factory $TrainingSessionCopyWith(
          TrainingSession value, $Res Function(TrainingSession) then) =
      _$TrainingSessionCopyWithImpl<$Res, TrainingSession>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) List<SessionExercise> exercises,
      @HiveField(3) int createdAt,
      @HiveField(4) int updatedAt,
      @HiveField(5) Map<MuscleGroup, int> setsCount});
}

/// @nodoc
class _$TrainingSessionCopyWithImpl<$Res, $Val extends TrainingSession>
    implements $TrainingSessionCopyWith<$Res> {
  _$TrainingSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? exercises = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? setsCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<SessionExercise>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
      setsCount: null == setsCount
          ? _value.setsCount
          : setsCount // ignore: cast_nullable_to_non_nullable
              as Map<MuscleGroup, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingSessionImplCopyWith<$Res>
    implements $TrainingSessionCopyWith<$Res> {
  factory _$$TrainingSessionImplCopyWith(_$TrainingSessionImpl value,
          $Res Function(_$TrainingSessionImpl) then) =
      __$$TrainingSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) List<SessionExercise> exercises,
      @HiveField(3) int createdAt,
      @HiveField(4) int updatedAt,
      @HiveField(5) Map<MuscleGroup, int> setsCount});
}

/// @nodoc
class __$$TrainingSessionImplCopyWithImpl<$Res>
    extends _$TrainingSessionCopyWithImpl<$Res, _$TrainingSessionImpl>
    implements _$$TrainingSessionImplCopyWith<$Res> {
  __$$TrainingSessionImplCopyWithImpl(
      _$TrainingSessionImpl _value, $Res Function(_$TrainingSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? exercises = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? setsCount = null,
  }) {
    return _then(_$TrainingSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<SessionExercise>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
      setsCount: null == setsCount
          ? _value._setsCount
          : setsCount // ignore: cast_nullable_to_non_nullable
              as Map<MuscleGroup, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$TrainingSessionImpl implements _TrainingSession {
  _$TrainingSessionImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required final List<SessionExercise> exercises,
      @HiveField(3) required this.createdAt,
      @HiveField(4) required this.updatedAt,
      @HiveField(5) required final Map<MuscleGroup, int> setsCount})
      : _exercises = exercises,
        _setsCount = setsCount;

  factory _$TrainingSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingSessionImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  final List<SessionExercise> _exercises;
  @override
  @HiveField(2)
  List<SessionExercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  @HiveField(3)
  final int createdAt;
  @override
  @HiveField(4)
  final int updatedAt;
  final Map<MuscleGroup, int> _setsCount;
  @override
  @HiveField(5)
  Map<MuscleGroup, int> get setsCount {
    if (_setsCount is EqualUnmodifiableMapView) return _setsCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_setsCount);
  }

  @override
  String toString() {
    return 'TrainingSession(id: $id, name: $name, exercises: $exercises, createdAt: $createdAt, updatedAt: $updatedAt, setsCount: $setsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._setsCount, _setsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_exercises),
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_setsCount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingSessionImplCopyWith<_$TrainingSessionImpl> get copyWith =>
      __$$TrainingSessionImplCopyWithImpl<_$TrainingSessionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingSessionImplToJson(
      this,
    );
  }
}

abstract class _TrainingSession implements TrainingSession {
  factory _TrainingSession(
          {@HiveField(0) required final String id,
          @HiveField(1) required final String name,
          @HiveField(2) required final List<SessionExercise> exercises,
          @HiveField(3) required final int createdAt,
          @HiveField(4) required final int updatedAt,
          @HiveField(5) required final Map<MuscleGroup, int> setsCount}) =
      _$TrainingSessionImpl;

  factory _TrainingSession.fromJson(Map<String, dynamic> json) =
      _$TrainingSessionImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  List<SessionExercise> get exercises;
  @override
  @HiveField(3)
  int get createdAt;
  @override
  @HiveField(4)
  int get updatedAt;
  @override
  @HiveField(5)
  Map<MuscleGroup, int> get setsCount;
  @override
  @JsonKey(ignore: true)
  _$$TrainingSessionImplCopyWith<_$TrainingSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
