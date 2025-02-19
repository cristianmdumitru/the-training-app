// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_sessions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrainingSessionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(TrainingSession trainingSession) create,
    required TResult Function(TrainingSession trainingSession) clone,
    required TResult Function(TrainingSession trainingSession) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(TrainingSession trainingSession)? create,
    TResult? Function(TrainingSession trainingSession)? clone,
    TResult? Function(TrainingSession trainingSession)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(TrainingSession trainingSession)? create,
    TResult Function(TrainingSession trainingSession)? clone,
    TResult Function(TrainingSession trainingSession)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_Clone value) clone,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Clone value)? clone,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Clone value)? clone,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingSessionsEventCopyWith<$Res> {
  factory $TrainingSessionsEventCopyWith(TrainingSessionsEvent value,
          $Res Function(TrainingSessionsEvent) then) =
      _$TrainingSessionsEventCopyWithImpl<$Res, TrainingSessionsEvent>;
}

/// @nodoc
class _$TrainingSessionsEventCopyWithImpl<$Res,
        $Val extends TrainingSessionsEvent>
    implements $TrainingSessionsEventCopyWith<$Res> {
  _$TrainingSessionsEventCopyWithImpl(this._value, this._then);

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
    extends _$TrainingSessionsEventCopyWithImpl<$Res, _$FetchImpl>
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
    return 'TrainingSessionsEvent.fetch()';
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
    required TResult Function(TrainingSession trainingSession) create,
    required TResult Function(TrainingSession trainingSession) clone,
    required TResult Function(TrainingSession trainingSession) delete,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(TrainingSession trainingSession)? create,
    TResult? Function(TrainingSession trainingSession)? clone,
    TResult? Function(TrainingSession trainingSession)? delete,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(TrainingSession trainingSession)? create,
    TResult Function(TrainingSession trainingSession)? clone,
    TResult Function(TrainingSession trainingSession)? delete,
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
    required TResult Function(_Clone value) clone,
    required TResult Function(_Delete value) delete,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Clone value)? clone,
    TResult? Function(_Delete value)? delete,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Clone value)? clone,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements TrainingSessionsEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrainingSession trainingSession});

  $TrainingSessionCopyWith<$Res> get trainingSession;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$TrainingSessionsEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainingSession = null,
  }) {
    return _then(_$CreateImpl(
      null == trainingSession
          ? _value.trainingSession
          : trainingSession // ignore: cast_nullable_to_non_nullable
              as TrainingSession,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TrainingSessionCopyWith<$Res> get trainingSession {
    return $TrainingSessionCopyWith<$Res>(_value.trainingSession, (value) {
      return _then(_value.copyWith(trainingSession: value));
    });
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl(this.trainingSession);

  @override
  final TrainingSession trainingSession;

  @override
  String toString() {
    return 'TrainingSessionsEvent.create(trainingSession: $trainingSession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.trainingSession, trainingSession) ||
                other.trainingSession == trainingSession));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trainingSession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(TrainingSession trainingSession) create,
    required TResult Function(TrainingSession trainingSession) clone,
    required TResult Function(TrainingSession trainingSession) delete,
  }) {
    return create(trainingSession);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(TrainingSession trainingSession)? create,
    TResult? Function(TrainingSession trainingSession)? clone,
    TResult? Function(TrainingSession trainingSession)? delete,
  }) {
    return create?.call(trainingSession);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(TrainingSession trainingSession)? create,
    TResult Function(TrainingSession trainingSession)? clone,
    TResult Function(TrainingSession trainingSession)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(trainingSession);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_Clone value) clone,
    required TResult Function(_Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Clone value)? clone,
    TResult? Function(_Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Clone value)? clone,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements TrainingSessionsEvent {
  const factory _Create(final TrainingSession trainingSession) = _$CreateImpl;

  TrainingSession get trainingSession;
  @JsonKey(ignore: true)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CloneImplCopyWith<$Res> {
  factory _$$CloneImplCopyWith(
          _$CloneImpl value, $Res Function(_$CloneImpl) then) =
      __$$CloneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrainingSession trainingSession});

  $TrainingSessionCopyWith<$Res> get trainingSession;
}

/// @nodoc
class __$$CloneImplCopyWithImpl<$Res>
    extends _$TrainingSessionsEventCopyWithImpl<$Res, _$CloneImpl>
    implements _$$CloneImplCopyWith<$Res> {
  __$$CloneImplCopyWithImpl(
      _$CloneImpl _value, $Res Function(_$CloneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainingSession = null,
  }) {
    return _then(_$CloneImpl(
      null == trainingSession
          ? _value.trainingSession
          : trainingSession // ignore: cast_nullable_to_non_nullable
              as TrainingSession,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TrainingSessionCopyWith<$Res> get trainingSession {
    return $TrainingSessionCopyWith<$Res>(_value.trainingSession, (value) {
      return _then(_value.copyWith(trainingSession: value));
    });
  }
}

/// @nodoc

class _$CloneImpl implements _Clone {
  const _$CloneImpl(this.trainingSession);

  @override
  final TrainingSession trainingSession;

  @override
  String toString() {
    return 'TrainingSessionsEvent.clone(trainingSession: $trainingSession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloneImpl &&
            (identical(other.trainingSession, trainingSession) ||
                other.trainingSession == trainingSession));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trainingSession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloneImplCopyWith<_$CloneImpl> get copyWith =>
      __$$CloneImplCopyWithImpl<_$CloneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(TrainingSession trainingSession) create,
    required TResult Function(TrainingSession trainingSession) clone,
    required TResult Function(TrainingSession trainingSession) delete,
  }) {
    return clone(trainingSession);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(TrainingSession trainingSession)? create,
    TResult? Function(TrainingSession trainingSession)? clone,
    TResult? Function(TrainingSession trainingSession)? delete,
  }) {
    return clone?.call(trainingSession);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(TrainingSession trainingSession)? create,
    TResult Function(TrainingSession trainingSession)? clone,
    TResult Function(TrainingSession trainingSession)? delete,
    required TResult orElse(),
  }) {
    if (clone != null) {
      return clone(trainingSession);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_Clone value) clone,
    required TResult Function(_Delete value) delete,
  }) {
    return clone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Clone value)? clone,
    TResult? Function(_Delete value)? delete,
  }) {
    return clone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Clone value)? clone,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (clone != null) {
      return clone(this);
    }
    return orElse();
  }
}

abstract class _Clone implements TrainingSessionsEvent {
  const factory _Clone(final TrainingSession trainingSession) = _$CloneImpl;

  TrainingSession get trainingSession;
  @JsonKey(ignore: true)
  _$$CloneImplCopyWith<_$CloneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrainingSession trainingSession});

  $TrainingSessionCopyWith<$Res> get trainingSession;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$TrainingSessionsEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainingSession = null,
  }) {
    return _then(_$DeleteImpl(
      null == trainingSession
          ? _value.trainingSession
          : trainingSession // ignore: cast_nullable_to_non_nullable
              as TrainingSession,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TrainingSessionCopyWith<$Res> get trainingSession {
    return $TrainingSessionCopyWith<$Res>(_value.trainingSession, (value) {
      return _then(_value.copyWith(trainingSession: value));
    });
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.trainingSession);

  @override
  final TrainingSession trainingSession;

  @override
  String toString() {
    return 'TrainingSessionsEvent.delete(trainingSession: $trainingSession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.trainingSession, trainingSession) ||
                other.trainingSession == trainingSession));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trainingSession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(TrainingSession trainingSession) create,
    required TResult Function(TrainingSession trainingSession) clone,
    required TResult Function(TrainingSession trainingSession) delete,
  }) {
    return delete(trainingSession);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(TrainingSession trainingSession)? create,
    TResult? Function(TrainingSession trainingSession)? clone,
    TResult? Function(TrainingSession trainingSession)? delete,
  }) {
    return delete?.call(trainingSession);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(TrainingSession trainingSession)? create,
    TResult Function(TrainingSession trainingSession)? clone,
    TResult Function(TrainingSession trainingSession)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(trainingSession);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_Clone value) clone,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Clone value)? clone,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Clone value)? clone,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements TrainingSessionsEvent {
  const factory _Delete(final TrainingSession trainingSession) = _$DeleteImpl;

  TrainingSession get trainingSession;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrainingSessionsState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<TrainingSession> get sessions => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainingSessionsStateCopyWith<TrainingSessionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingSessionsStateCopyWith<$Res> {
  factory $TrainingSessionsStateCopyWith(TrainingSessionsState value,
          $Res Function(TrainingSessionsState) then) =
      _$TrainingSessionsStateCopyWithImpl<$Res, TrainingSessionsState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<TrainingSession> sessions,
      String? errorMessage});
}

/// @nodoc
class _$TrainingSessionsStateCopyWithImpl<$Res,
        $Val extends TrainingSessionsState>
    implements $TrainingSessionsStateCopyWith<$Res> {
  _$TrainingSessionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sessions = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<TrainingSession>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingSessionsStateImplCopyWith<$Res>
    implements $TrainingSessionsStateCopyWith<$Res> {
  factory _$$TrainingSessionsStateImplCopyWith(
          _$TrainingSessionsStateImpl value,
          $Res Function(_$TrainingSessionsStateImpl) then) =
      __$$TrainingSessionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<TrainingSession> sessions,
      String? errorMessage});
}

/// @nodoc
class __$$TrainingSessionsStateImplCopyWithImpl<$Res>
    extends _$TrainingSessionsStateCopyWithImpl<$Res,
        _$TrainingSessionsStateImpl>
    implements _$$TrainingSessionsStateImplCopyWith<$Res> {
  __$$TrainingSessionsStateImplCopyWithImpl(_$TrainingSessionsStateImpl _value,
      $Res Function(_$TrainingSessionsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sessions = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TrainingSessionsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<TrainingSession>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TrainingSessionsStateImpl extends _TrainingSessionsState {
  const _$TrainingSessionsStateImpl(
      {this.status = BlocStatus.idle,
      final List<TrainingSession> sessions = const <TrainingSession>[],
      this.errorMessage})
      : _sessions = sessions,
        super._();

  @override
  @JsonKey()
  final BlocStatus status;
  final List<TrainingSession> _sessions;
  @override
  @JsonKey()
  List<TrainingSession> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TrainingSessionsState(status: $status, sessions: $sessions, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingSessionsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_sessions), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingSessionsStateImplCopyWith<_$TrainingSessionsStateImpl>
      get copyWith => __$$TrainingSessionsStateImplCopyWithImpl<
          _$TrainingSessionsStateImpl>(this, _$identity);
}

abstract class _TrainingSessionsState extends TrainingSessionsState {
  const factory _TrainingSessionsState(
      {final BlocStatus status,
      final List<TrainingSession> sessions,
      final String? errorMessage}) = _$TrainingSessionsStateImpl;
  const _TrainingSessionsState._() : super._();

  @override
  BlocStatus get status;
  @override
  List<TrainingSession> get sessions;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$TrainingSessionsStateImplCopyWith<_$TrainingSessionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
