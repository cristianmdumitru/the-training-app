// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_templates_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkoutTemplatesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(WorkoutTemplate template) create,
    required TResult Function(WorkoutTemplate template) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(WorkoutTemplate template)? create,
    TResult? Function(WorkoutTemplate template)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(WorkoutTemplate template)? create,
    TResult Function(WorkoutTemplate template)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutTemplatesEventCopyWith<$Res> {
  factory $WorkoutTemplatesEventCopyWith(WorkoutTemplatesEvent value,
          $Res Function(WorkoutTemplatesEvent) then) =
      _$WorkoutTemplatesEventCopyWithImpl<$Res, WorkoutTemplatesEvent>;
}

/// @nodoc
class _$WorkoutTemplatesEventCopyWithImpl<$Res,
        $Val extends WorkoutTemplatesEvent>
    implements $WorkoutTemplatesEventCopyWith<$Res> {
  _$WorkoutTemplatesEventCopyWithImpl(this._value, this._then);

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
    extends _$WorkoutTemplatesEventCopyWithImpl<$Res, _$FetchImpl>
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
    return 'WorkoutTemplatesEvent.fetch()';
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
    required TResult Function(WorkoutTemplate template) create,
    required TResult Function(WorkoutTemplate template) delete,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(WorkoutTemplate template)? create,
    TResult? Function(WorkoutTemplate template)? delete,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(WorkoutTemplate template)? create,
    TResult Function(WorkoutTemplate template)? delete,
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
    required TResult Function(_Delete value) delete,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Delete value)? delete,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements WorkoutTemplatesEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkoutTemplate template});

  $WorkoutTemplateCopyWith<$Res> get template;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$WorkoutTemplatesEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? template = null,
  }) {
    return _then(_$CreateImpl(
      null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as WorkoutTemplate,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkoutTemplateCopyWith<$Res> get template {
    return $WorkoutTemplateCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value));
    });
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl(this.template);

  @override
  final WorkoutTemplate template;

  @override
  String toString() {
    return 'WorkoutTemplatesEvent.create(template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @override
  int get hashCode => Object.hash(runtimeType, template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(WorkoutTemplate template) create,
    required TResult Function(WorkoutTemplate template) delete,
  }) {
    return create(template);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(WorkoutTemplate template)? create,
    TResult? Function(WorkoutTemplate template)? delete,
  }) {
    return create?.call(template);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(WorkoutTemplate template)? create,
    TResult Function(WorkoutTemplate template)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements WorkoutTemplatesEvent {
  const factory _Create(final WorkoutTemplate template) = _$CreateImpl;

  WorkoutTemplate get template;
  @JsonKey(ignore: true)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkoutTemplate template});

  $WorkoutTemplateCopyWith<$Res> get template;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$WorkoutTemplatesEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? template = null,
  }) {
    return _then(_$DeleteImpl(
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as WorkoutTemplate,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkoutTemplateCopyWith<$Res> get template {
    return $WorkoutTemplateCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value));
    });
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl({required this.template});

  @override
  final WorkoutTemplate template;

  @override
  String toString() {
    return 'WorkoutTemplatesEvent.delete(template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @override
  int get hashCode => Object.hash(runtimeType, template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(WorkoutTemplate template) create,
    required TResult Function(WorkoutTemplate template) delete,
  }) {
    return delete(template);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(WorkoutTemplate template)? create,
    TResult? Function(WorkoutTemplate template)? delete,
  }) {
    return delete?.call(template);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(WorkoutTemplate template)? create,
    TResult Function(WorkoutTemplate template)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements WorkoutTemplatesEvent {
  const factory _Delete({required final WorkoutTemplate template}) =
      _$DeleteImpl;

  WorkoutTemplate get template;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkoutTemplatesState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<WorkoutTemplate> get templates => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutTemplatesStateCopyWith<WorkoutTemplatesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutTemplatesStateCopyWith<$Res> {
  factory $WorkoutTemplatesStateCopyWith(WorkoutTemplatesState value,
          $Res Function(WorkoutTemplatesState) then) =
      _$WorkoutTemplatesStateCopyWithImpl<$Res, WorkoutTemplatesState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<WorkoutTemplate> templates,
      String? errorMessage});
}

/// @nodoc
class _$WorkoutTemplatesStateCopyWithImpl<$Res,
        $Val extends WorkoutTemplatesState>
    implements $WorkoutTemplatesStateCopyWith<$Res> {
  _$WorkoutTemplatesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? templates = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      templates: null == templates
          ? _value.templates
          : templates // ignore: cast_nullable_to_non_nullable
              as List<WorkoutTemplate>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutTemplatesStateImplCopyWith<$Res>
    implements $WorkoutTemplatesStateCopyWith<$Res> {
  factory _$$WorkoutTemplatesStateImplCopyWith(
          _$WorkoutTemplatesStateImpl value,
          $Res Function(_$WorkoutTemplatesStateImpl) then) =
      __$$WorkoutTemplatesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<WorkoutTemplate> templates,
      String? errorMessage});
}

/// @nodoc
class __$$WorkoutTemplatesStateImplCopyWithImpl<$Res>
    extends _$WorkoutTemplatesStateCopyWithImpl<$Res,
        _$WorkoutTemplatesStateImpl>
    implements _$$WorkoutTemplatesStateImplCopyWith<$Res> {
  __$$WorkoutTemplatesStateImplCopyWithImpl(_$WorkoutTemplatesStateImpl _value,
      $Res Function(_$WorkoutTemplatesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? templates = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$WorkoutTemplatesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      templates: null == templates
          ? _value._templates
          : templates // ignore: cast_nullable_to_non_nullable
              as List<WorkoutTemplate>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WorkoutTemplatesStateImpl implements _WorkoutTemplatesState {
  const _$WorkoutTemplatesStateImpl(
      {this.status = BlocStatus.idle,
      final List<WorkoutTemplate> templates = const <WorkoutTemplate>[],
      this.errorMessage})
      : _templates = templates;

  @override
  @JsonKey()
  final BlocStatus status;
  final List<WorkoutTemplate> _templates;
  @override
  @JsonKey()
  List<WorkoutTemplate> get templates {
    if (_templates is EqualUnmodifiableListView) return _templates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_templates);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'WorkoutTemplatesState(status: $status, templates: $templates, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutTemplatesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._templates, _templates) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_templates), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutTemplatesStateImplCopyWith<_$WorkoutTemplatesStateImpl>
      get copyWith => __$$WorkoutTemplatesStateImplCopyWithImpl<
          _$WorkoutTemplatesStateImpl>(this, _$identity);
}

abstract class _WorkoutTemplatesState implements WorkoutTemplatesState {
  const factory _WorkoutTemplatesState(
      {final BlocStatus status,
      final List<WorkoutTemplate> templates,
      final String? errorMessage}) = _$WorkoutTemplatesStateImpl;

  @override
  BlocStatus get status;
  @override
  List<WorkoutTemplate> get templates;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutTemplatesStateImplCopyWith<_$WorkoutTemplatesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
