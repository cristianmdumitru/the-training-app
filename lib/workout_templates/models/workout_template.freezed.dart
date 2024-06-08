// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutTemplate _$WorkoutTemplateFromJson(Map<String, dynamic> json) {
  return _WorkoutTemplate.fromJson(json);
}

/// @nodoc
mixin _$WorkoutTemplate {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  List<UserExercise> get exercises => throw _privateConstructorUsedError;
  @HiveField(3)
  int get createdAt => throw _privateConstructorUsedError;
  @HiveField(4)
  int get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutTemplateCopyWith<WorkoutTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutTemplateCopyWith<$Res> {
  factory $WorkoutTemplateCopyWith(
          WorkoutTemplate value, $Res Function(WorkoutTemplate) then) =
      _$WorkoutTemplateCopyWithImpl<$Res, WorkoutTemplate>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) List<UserExercise> exercises,
      @HiveField(3) int createdAt,
      @HiveField(4) int updatedAt});
}

/// @nodoc
class _$WorkoutTemplateCopyWithImpl<$Res, $Val extends WorkoutTemplate>
    implements $WorkoutTemplateCopyWith<$Res> {
  _$WorkoutTemplateCopyWithImpl(this._value, this._then);

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
              as List<UserExercise>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutTemplateImplCopyWith<$Res>
    implements $WorkoutTemplateCopyWith<$Res> {
  factory _$$WorkoutTemplateImplCopyWith(_$WorkoutTemplateImpl value,
          $Res Function(_$WorkoutTemplateImpl) then) =
      __$$WorkoutTemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) List<UserExercise> exercises,
      @HiveField(3) int createdAt,
      @HiveField(4) int updatedAt});
}

/// @nodoc
class __$$WorkoutTemplateImplCopyWithImpl<$Res>
    extends _$WorkoutTemplateCopyWithImpl<$Res, _$WorkoutTemplateImpl>
    implements _$$WorkoutTemplateImplCopyWith<$Res> {
  __$$WorkoutTemplateImplCopyWithImpl(
      _$WorkoutTemplateImpl _value, $Res Function(_$WorkoutTemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? exercises = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$WorkoutTemplateImpl(
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
              as List<UserExercise>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 6)
class _$WorkoutTemplateImpl implements _WorkoutTemplate {
  _$WorkoutTemplateImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required final List<UserExercise> exercises,
      @HiveField(3) required this.createdAt,
      @HiveField(4) required this.updatedAt})
      : _exercises = exercises;

  factory _$WorkoutTemplateImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutTemplateImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  final List<UserExercise> _exercises;
  @override
  @HiveField(2)
  List<UserExercise> get exercises {
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

  @override
  String toString() {
    return 'WorkoutTemplate(id: $id, name: $name, exercises: $exercises, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutTemplateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_exercises), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutTemplateImplCopyWith<_$WorkoutTemplateImpl> get copyWith =>
      __$$WorkoutTemplateImplCopyWithImpl<_$WorkoutTemplateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutTemplateImplToJson(
      this,
    );
  }
}

abstract class _WorkoutTemplate implements WorkoutTemplate {
  factory _WorkoutTemplate(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) required final List<UserExercise> exercises,
      @HiveField(3) required final int createdAt,
      @HiveField(4) required final int updatedAt}) = _$WorkoutTemplateImpl;

  factory _WorkoutTemplate.fromJson(Map<String, dynamic> json) =
      _$WorkoutTemplateImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  List<UserExercise> get exercises;
  @override
  @HiveField(3)
  int get createdAt;
  @override
  @HiveField(4)
  int get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutTemplateImplCopyWith<_$WorkoutTemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
