// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_statistics_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BodyStatisticsState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<TrainingSession> get lastSessions => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<MuscleGroup, int> get setsCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BodyStatisticsStateCopyWith<BodyStatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyStatisticsStateCopyWith<$Res> {
  factory $BodyStatisticsStateCopyWith(
          BodyStatisticsState value, $Res Function(BodyStatisticsState) then) =
      _$BodyStatisticsStateCopyWithImpl<$Res, BodyStatisticsState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<TrainingSession> lastSessions,
      String? errorMessage,
      Map<MuscleGroup, int> setsCount});
}

/// @nodoc
class _$BodyStatisticsStateCopyWithImpl<$Res, $Val extends BodyStatisticsState>
    implements $BodyStatisticsStateCopyWith<$Res> {
  _$BodyStatisticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? lastSessions = null,
    Object? errorMessage = freezed,
    Object? setsCount = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      lastSessions: null == lastSessions
          ? _value.lastSessions
          : lastSessions // ignore: cast_nullable_to_non_nullable
              as List<TrainingSession>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      setsCount: null == setsCount
          ? _value.setsCount
          : setsCount // ignore: cast_nullable_to_non_nullable
              as Map<MuscleGroup, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyStatisticsStateImplCopyWith<$Res>
    implements $BodyStatisticsStateCopyWith<$Res> {
  factory _$$BodyStatisticsStateImplCopyWith(_$BodyStatisticsStateImpl value,
          $Res Function(_$BodyStatisticsStateImpl) then) =
      __$$BodyStatisticsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<TrainingSession> lastSessions,
      String? errorMessage,
      Map<MuscleGroup, int> setsCount});
}

/// @nodoc
class __$$BodyStatisticsStateImplCopyWithImpl<$Res>
    extends _$BodyStatisticsStateCopyWithImpl<$Res, _$BodyStatisticsStateImpl>
    implements _$$BodyStatisticsStateImplCopyWith<$Res> {
  __$$BodyStatisticsStateImplCopyWithImpl(_$BodyStatisticsStateImpl _value,
      $Res Function(_$BodyStatisticsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? lastSessions = null,
    Object? errorMessage = freezed,
    Object? setsCount = null,
  }) {
    return _then(_$BodyStatisticsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      lastSessions: null == lastSessions
          ? _value._lastSessions
          : lastSessions // ignore: cast_nullable_to_non_nullable
              as List<TrainingSession>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      setsCount: null == setsCount
          ? _value._setsCount
          : setsCount // ignore: cast_nullable_to_non_nullable
              as Map<MuscleGroup, int>,
    ));
  }
}

/// @nodoc

class _$BodyStatisticsStateImpl extends _BodyStatisticsState {
  _$BodyStatisticsStateImpl(
      {this.status = BlocStatus.idle,
      final List<TrainingSession> lastSessions = const [],
      this.errorMessage,
      final Map<MuscleGroup, int> setsCount = const {}})
      : _lastSessions = lastSessions,
        _setsCount = setsCount,
        super._();

  @override
  @JsonKey()
  final BlocStatus status;
  final List<TrainingSession> _lastSessions;
  @override
  @JsonKey()
  List<TrainingSession> get lastSessions {
    if (_lastSessions is EqualUnmodifiableListView) return _lastSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastSessions);
  }

  @override
  final String? errorMessage;
  final Map<MuscleGroup, int> _setsCount;
  @override
  @JsonKey()
  Map<MuscleGroup, int> get setsCount {
    if (_setsCount is EqualUnmodifiableMapView) return _setsCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_setsCount);
  }

  @override
  String toString() {
    return 'BodyStatisticsState(status: $status, lastSessions: $lastSessions, errorMessage: $errorMessage, setsCount: $setsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyStatisticsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._lastSessions, _lastSessions) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._setsCount, _setsCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_lastSessions),
      errorMessage,
      const DeepCollectionEquality().hash(_setsCount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyStatisticsStateImplCopyWith<_$BodyStatisticsStateImpl> get copyWith =>
      __$$BodyStatisticsStateImplCopyWithImpl<_$BodyStatisticsStateImpl>(
          this, _$identity);
}

abstract class _BodyStatisticsState extends BodyStatisticsState {
  factory _BodyStatisticsState(
      {final BlocStatus status,
      final List<TrainingSession> lastSessions,
      final String? errorMessage,
      final Map<MuscleGroup, int> setsCount}) = _$BodyStatisticsStateImpl;
  _BodyStatisticsState._() : super._();

  @override
  BlocStatus get status;
  @override
  List<TrainingSession> get lastSessions;
  @override
  String? get errorMessage;
  @override
  Map<MuscleGroup, int> get setsCount;
  @override
  @JsonKey(ignore: true)
  _$$BodyStatisticsStateImplCopyWith<_$BodyStatisticsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
