// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseSet _$ExerciseSetFromJson(Map<String, dynamic> json) {
  return _ExerciseSet.fromJson(json);
}

/// @nodoc
mixin _$ExerciseSet {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get sessionExerciseId => throw _privateConstructorUsedError;
  @HiveField(2)
  double get load => throw _privateConstructorUsedError;
  @HiveField(3)
  int get effortRating => throw _privateConstructorUsedError;
  @HiveField(4)
  int get effortUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseSetCopyWith<ExerciseSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSetCopyWith<$Res> {
  factory $ExerciseSetCopyWith(
          ExerciseSet value, $Res Function(ExerciseSet) then) =
      _$ExerciseSetCopyWithImpl<$Res, ExerciseSet>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String sessionExerciseId,
      @HiveField(2) double load,
      @HiveField(3) int effortRating,
      @HiveField(4) int effortUnit});
}

/// @nodoc
class _$ExerciseSetCopyWithImpl<$Res, $Val extends ExerciseSet>
    implements $ExerciseSetCopyWith<$Res> {
  _$ExerciseSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionExerciseId = null,
    Object? load = null,
    Object? effortRating = null,
    Object? effortUnit = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sessionExerciseId: null == sessionExerciseId
          ? _value.sessionExerciseId
          : sessionExerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      load: null == load
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as double,
      effortRating: null == effortRating
          ? _value.effortRating
          : effortRating // ignore: cast_nullable_to_non_nullable
              as int,
      effortUnit: null == effortUnit
          ? _value.effortUnit
          : effortUnit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseSetImplCopyWith<$Res>
    implements $ExerciseSetCopyWith<$Res> {
  factory _$$ExerciseSetImplCopyWith(
          _$ExerciseSetImpl value, $Res Function(_$ExerciseSetImpl) then) =
      __$$ExerciseSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String sessionExerciseId,
      @HiveField(2) double load,
      @HiveField(3) int effortRating,
      @HiveField(4) int effortUnit});
}

/// @nodoc
class __$$ExerciseSetImplCopyWithImpl<$Res>
    extends _$ExerciseSetCopyWithImpl<$Res, _$ExerciseSetImpl>
    implements _$$ExerciseSetImplCopyWith<$Res> {
  __$$ExerciseSetImplCopyWithImpl(
      _$ExerciseSetImpl _value, $Res Function(_$ExerciseSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionExerciseId = null,
    Object? load = null,
    Object? effortRating = null,
    Object? effortUnit = null,
  }) {
    return _then(_$ExerciseSetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sessionExerciseId: null == sessionExerciseId
          ? _value.sessionExerciseId
          : sessionExerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      load: null == load
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as double,
      effortRating: null == effortRating
          ? _value.effortRating
          : effortRating // ignore: cast_nullable_to_non_nullable
              as int,
      effortUnit: null == effortUnit
          ? _value.effortUnit
          : effortUnit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2)
class _$ExerciseSetImpl implements _ExerciseSet {
  _$ExerciseSetImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.sessionExerciseId,
      @HiveField(2) required this.load,
      @HiveField(3) required this.effortRating,
      @HiveField(4) required this.effortUnit});

  factory _$ExerciseSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseSetImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String sessionExerciseId;
  @override
  @HiveField(2)
  final double load;
  @override
  @HiveField(3)
  final int effortRating;
  @override
  @HiveField(4)
  final int effortUnit;

  @override
  String toString() {
    return 'ExerciseSet(id: $id, sessionExerciseId: $sessionExerciseId, load: $load, effortRating: $effortRating, effortUnit: $effortUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseSetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionExerciseId, sessionExerciseId) ||
                other.sessionExerciseId == sessionExerciseId) &&
            (identical(other.load, load) || other.load == load) &&
            (identical(other.effortRating, effortRating) ||
                other.effortRating == effortRating) &&
            (identical(other.effortUnit, effortUnit) ||
                other.effortUnit == effortUnit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, sessionExerciseId, load, effortRating, effortUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseSetImplCopyWith<_$ExerciseSetImpl> get copyWith =>
      __$$ExerciseSetImplCopyWithImpl<_$ExerciseSetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseSetImplToJson(
      this,
    );
  }
}

abstract class _ExerciseSet implements ExerciseSet {
  factory _ExerciseSet(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String sessionExerciseId,
      @HiveField(2) required final double load,
      @HiveField(3) required final int effortRating,
      @HiveField(4) required final int effortUnit}) = _$ExerciseSetImpl;

  factory _ExerciseSet.fromJson(Map<String, dynamic> json) =
      _$ExerciseSetImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get sessionExerciseId;
  @override
  @HiveField(2)
  double get load;
  @override
  @HiveField(3)
  int get effortRating;
  @override
  @HiveField(4)
  int get effortUnit;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseSetImplCopyWith<_$ExerciseSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
