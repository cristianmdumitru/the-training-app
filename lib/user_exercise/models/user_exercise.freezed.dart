// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserExercise _$UserExerciseFromJson(Map<String, dynamic> json) {
  return _UserExercise.fromJson(json);
}

/// @nodoc
mixin _$UserExercise {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  ExerciseType? get exerciseType => throw _privateConstructorUsedError;
  @HiveField(3)
  EffortType? get effortType => throw _privateConstructorUsedError;
  @HiveField(4)
  int get createdAt => throw _privateConstructorUsedError;
  @HiveField(5)
  int get updatedAt => throw _privateConstructorUsedError;
  @HiveField(6)
  List<MuscleGroup> get targettedMuscleGroups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserExerciseCopyWith<UserExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExerciseCopyWith<$Res> {
  factory $UserExerciseCopyWith(
          UserExercise value, $Res Function(UserExercise) then) =
      _$UserExerciseCopyWithImpl<$Res, UserExercise>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) ExerciseType? exerciseType,
      @HiveField(3) EffortType? effortType,
      @HiveField(4) int createdAt,
      @HiveField(5) int updatedAt,
      @HiveField(6) List<MuscleGroup> targettedMuscleGroups});
}

/// @nodoc
class _$UserExerciseCopyWithImpl<$Res, $Val extends UserExercise>
    implements $UserExerciseCopyWith<$Res> {
  _$UserExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? exerciseType = freezed,
    Object? effortType = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? targettedMuscleGroups = null,
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
      exerciseType: freezed == exerciseType
          ? _value.exerciseType
          : exerciseType // ignore: cast_nullable_to_non_nullable
              as ExerciseType?,
      effortType: freezed == effortType
          ? _value.effortType
          : effortType // ignore: cast_nullable_to_non_nullable
              as EffortType?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
      targettedMuscleGroups: null == targettedMuscleGroups
          ? _value.targettedMuscleGroups
          : targettedMuscleGroups // ignore: cast_nullable_to_non_nullable
              as List<MuscleGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserExerciseImplCopyWith<$Res>
    implements $UserExerciseCopyWith<$Res> {
  factory _$$UserExerciseImplCopyWith(
          _$UserExerciseImpl value, $Res Function(_$UserExerciseImpl) then) =
      __$$UserExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) ExerciseType? exerciseType,
      @HiveField(3) EffortType? effortType,
      @HiveField(4) int createdAt,
      @HiveField(5) int updatedAt,
      @HiveField(6) List<MuscleGroup> targettedMuscleGroups});
}

/// @nodoc
class __$$UserExerciseImplCopyWithImpl<$Res>
    extends _$UserExerciseCopyWithImpl<$Res, _$UserExerciseImpl>
    implements _$$UserExerciseImplCopyWith<$Res> {
  __$$UserExerciseImplCopyWithImpl(
      _$UserExerciseImpl _value, $Res Function(_$UserExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? exerciseType = freezed,
    Object? effortType = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? targettedMuscleGroups = null,
  }) {
    return _then(_$UserExerciseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseType: freezed == exerciseType
          ? _value.exerciseType
          : exerciseType // ignore: cast_nullable_to_non_nullable
              as ExerciseType?,
      effortType: freezed == effortType
          ? _value.effortType
          : effortType // ignore: cast_nullable_to_non_nullable
              as EffortType?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
      targettedMuscleGroups: null == targettedMuscleGroups
          ? _value._targettedMuscleGroups
          : targettedMuscleGroups // ignore: cast_nullable_to_non_nullable
              as List<MuscleGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$UserExerciseImpl implements _UserExercise {
  _$UserExerciseImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.exerciseType,
      @HiveField(3) required this.effortType,
      @HiveField(4) required this.createdAt,
      @HiveField(5) required this.updatedAt,
      @HiveField(6) required final List<MuscleGroup> targettedMuscleGroups})
      : _targettedMuscleGroups = targettedMuscleGroups;

  factory _$UserExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserExerciseImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final ExerciseType? exerciseType;
  @override
  @HiveField(3)
  final EffortType? effortType;
  @override
  @HiveField(4)
  final int createdAt;
  @override
  @HiveField(5)
  final int updatedAt;
  final List<MuscleGroup> _targettedMuscleGroups;
  @override
  @HiveField(6)
  List<MuscleGroup> get targettedMuscleGroups {
    if (_targettedMuscleGroups is EqualUnmodifiableListView)
      return _targettedMuscleGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targettedMuscleGroups);
  }

  @override
  String toString() {
    return 'UserExercise(id: $id, name: $name, exerciseType: $exerciseType, effortType: $effortType, createdAt: $createdAt, updatedAt: $updatedAt, targettedMuscleGroups: $targettedMuscleGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.exerciseType, exerciseType) ||
                other.exerciseType == exerciseType) &&
            (identical(other.effortType, effortType) ||
                other.effortType == effortType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._targettedMuscleGroups, _targettedMuscleGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      exerciseType,
      effortType,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_targettedMuscleGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserExerciseImplCopyWith<_$UserExerciseImpl> get copyWith =>
      __$$UserExerciseImplCopyWithImpl<_$UserExerciseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserExerciseImplToJson(
      this,
    );
  }
}

abstract class _UserExercise implements UserExercise {
  factory _UserExercise(
          {@HiveField(0) required final String id,
          @HiveField(1) required final String name,
          @HiveField(2) required final ExerciseType? exerciseType,
          @HiveField(3) required final EffortType? effortType,
          @HiveField(4) required final int createdAt,
          @HiveField(5) required final int updatedAt,
          @HiveField(6)
          required final List<MuscleGroup> targettedMuscleGroups}) =
      _$UserExerciseImpl;

  factory _UserExercise.fromJson(Map<String, dynamic> json) =
      _$UserExerciseImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  ExerciseType? get exerciseType;
  @override
  @HiveField(3)
  EffortType? get effortType;
  @override
  @HiveField(4)
  int get createdAt;
  @override
  @HiveField(5)
  int get updatedAt;
  @override
  @HiveField(6)
  List<MuscleGroup> get targettedMuscleGroups;
  @override
  @JsonKey(ignore: true)
  _$$UserExerciseImplCopyWith<_$UserExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
