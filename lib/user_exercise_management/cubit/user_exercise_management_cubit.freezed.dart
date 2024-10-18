// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_exercise_management_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserExerciseManagementState {
  UserExercise get userExercise => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserExerciseManagementStateCopyWith<UserExerciseManagementState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExerciseManagementStateCopyWith<$Res> {
  factory $UserExerciseManagementStateCopyWith(
          UserExerciseManagementState value,
          $Res Function(UserExerciseManagementState) then) =
      _$UserExerciseManagementStateCopyWithImpl<$Res,
          UserExerciseManagementState>;
  @useResult
  $Res call({UserExercise userExercise});

  $UserExerciseCopyWith<$Res> get userExercise;
}

/// @nodoc
class _$UserExerciseManagementStateCopyWithImpl<$Res,
        $Val extends UserExerciseManagementState>
    implements $UserExerciseManagementStateCopyWith<$Res> {
  _$UserExerciseManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userExercise = null,
  }) {
    return _then(_value.copyWith(
      userExercise: null == userExercise
          ? _value.userExercise
          : userExercise // ignore: cast_nullable_to_non_nullable
              as UserExercise,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserExerciseCopyWith<$Res> get userExercise {
    return $UserExerciseCopyWith<$Res>(_value.userExercise, (value) {
      return _then(_value.copyWith(userExercise: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserExerciseManagementStateImplCopyWith<$Res>
    implements $UserExerciseManagementStateCopyWith<$Res> {
  factory _$$UserExerciseManagementStateImplCopyWith(
          _$UserExerciseManagementStateImpl value,
          $Res Function(_$UserExerciseManagementStateImpl) then) =
      __$$UserExerciseManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserExercise userExercise});

  @override
  $UserExerciseCopyWith<$Res> get userExercise;
}

/// @nodoc
class __$$UserExerciseManagementStateImplCopyWithImpl<$Res>
    extends _$UserExerciseManagementStateCopyWithImpl<$Res,
        _$UserExerciseManagementStateImpl>
    implements _$$UserExerciseManagementStateImplCopyWith<$Res> {
  __$$UserExerciseManagementStateImplCopyWithImpl(
      _$UserExerciseManagementStateImpl _value,
      $Res Function(_$UserExerciseManagementStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userExercise = null,
  }) {
    return _then(_$UserExerciseManagementStateImpl(
      userExercise: null == userExercise
          ? _value.userExercise
          : userExercise // ignore: cast_nullable_to_non_nullable
              as UserExercise,
    ));
  }
}

/// @nodoc

class _$UserExerciseManagementStateImpl
    implements _UserExerciseManagementState {
  const _$UserExerciseManagementStateImpl({required this.userExercise});

  @override
  final UserExercise userExercise;

  @override
  String toString() {
    return 'UserExerciseManagementState(userExercise: $userExercise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserExerciseManagementStateImpl &&
            (identical(other.userExercise, userExercise) ||
                other.userExercise == userExercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userExercise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserExerciseManagementStateImplCopyWith<_$UserExerciseManagementStateImpl>
      get copyWith => __$$UserExerciseManagementStateImplCopyWithImpl<
          _$UserExerciseManagementStateImpl>(this, _$identity);
}

abstract class _UserExerciseManagementState
    implements UserExerciseManagementState {
  const factory _UserExerciseManagementState(
          {required final UserExercise userExercise}) =
      _$UserExerciseManagementStateImpl;

  @override
  UserExercise get userExercise;
  @override
  @JsonKey(ignore: true)
  _$$UserExerciseManagementStateImplCopyWith<_$UserExerciseManagementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
