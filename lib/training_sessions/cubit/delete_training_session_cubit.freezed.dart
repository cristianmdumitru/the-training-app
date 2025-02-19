// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_training_session_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteTrainingSessionState {
  TrainingSession? get session => throw _privateConstructorUsedError;
  BlocStatus get status => throw _privateConstructorUsedError;
  AppError? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteTrainingSessionStateCopyWith<DeleteTrainingSessionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTrainingSessionStateCopyWith<$Res> {
  factory $DeleteTrainingSessionStateCopyWith(DeleteTrainingSessionState value,
          $Res Function(DeleteTrainingSessionState) then) =
      _$DeleteTrainingSessionStateCopyWithImpl<$Res,
          DeleteTrainingSessionState>;
  @useResult
  $Res call({TrainingSession? session, BlocStatus status, AppError? error});

  $TrainingSessionCopyWith<$Res>? get session;
}

/// @nodoc
class _$DeleteTrainingSessionStateCopyWithImpl<$Res,
        $Val extends DeleteTrainingSessionState>
    implements $DeleteTrainingSessionStateCopyWith<$Res> {
  _$DeleteTrainingSessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = freezed,
    Object? status = null,
    Object? error = freezed,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError?,
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
abstract class _$$DeleteTrainingSessionStateImplCopyWith<$Res>
    implements $DeleteTrainingSessionStateCopyWith<$Res> {
  factory _$$DeleteTrainingSessionStateImplCopyWith(
          _$DeleteTrainingSessionStateImpl value,
          $Res Function(_$DeleteTrainingSessionStateImpl) then) =
      __$$DeleteTrainingSessionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TrainingSession? session, BlocStatus status, AppError? error});

  @override
  $TrainingSessionCopyWith<$Res>? get session;
}

/// @nodoc
class __$$DeleteTrainingSessionStateImplCopyWithImpl<$Res>
    extends _$DeleteTrainingSessionStateCopyWithImpl<$Res,
        _$DeleteTrainingSessionStateImpl>
    implements _$$DeleteTrainingSessionStateImplCopyWith<$Res> {
  __$$DeleteTrainingSessionStateImplCopyWithImpl(
      _$DeleteTrainingSessionStateImpl _value,
      $Res Function(_$DeleteTrainingSessionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = freezed,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$DeleteTrainingSessionStateImpl(
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as TrainingSession?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError?,
    ));
  }
}

/// @nodoc

class _$DeleteTrainingSessionStateImpl implements _DeleteTrainingSessionState {
  _$DeleteTrainingSessionStateImpl(
      {this.session, this.status = BlocStatus.idle, this.error});

  @override
  final TrainingSession? session;
  @override
  @JsonKey()
  final BlocStatus status;
  @override
  final AppError? error;

  @override
  String toString() {
    return 'DeleteTrainingSessionState(session: $session, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTrainingSessionStateImpl &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTrainingSessionStateImplCopyWith<_$DeleteTrainingSessionStateImpl>
      get copyWith => __$$DeleteTrainingSessionStateImplCopyWithImpl<
          _$DeleteTrainingSessionStateImpl>(this, _$identity);
}

abstract class _DeleteTrainingSessionState
    implements DeleteTrainingSessionState {
  factory _DeleteTrainingSessionState(
      {final TrainingSession? session,
      final BlocStatus status,
      final AppError? error}) = _$DeleteTrainingSessionStateImpl;

  @override
  TrainingSession? get session;
  @override
  BlocStatus get status;
  @override
  AppError? get error;
  @override
  @JsonKey(ignore: true)
  _$$DeleteTrainingSessionStateImplCopyWith<_$DeleteTrainingSessionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
