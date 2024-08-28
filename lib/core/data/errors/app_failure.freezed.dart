// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppFailure {
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) failure,
    required TResult Function(String msg) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? failure,
    TResult? Function(String msg)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? failure,
    TResult Function(String msg)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppRequestFailure value) failure,
    required TResult Function(AppRequestSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppRequestFailure value)? failure,
    TResult? Function(AppRequestSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppRequestFailure value)? failure,
    TResult Function(AppRequestSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppFailureCopyWith<AppFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppFailureCopyWith<$Res> {
  factory $AppFailureCopyWith(
          AppFailure value, $Res Function(AppFailure) then) =
      _$AppFailureCopyWithImpl<$Res, AppFailure>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$AppFailureCopyWithImpl<$Res, $Val extends AppFailure>
    implements $AppFailureCopyWith<$Res> {
  _$AppFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppRequestFailureImplCopyWith<$Res>
    implements $AppFailureCopyWith<$Res> {
  factory _$$AppRequestFailureImplCopyWith(_$AppRequestFailureImpl value,
          $Res Function(_$AppRequestFailureImpl) then) =
      __$$AppRequestFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$AppRequestFailureImplCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res, _$AppRequestFailureImpl>
    implements _$$AppRequestFailureImplCopyWith<$Res> {
  __$$AppRequestFailureImplCopyWithImpl(_$AppRequestFailureImpl _value,
      $Res Function(_$AppRequestFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$AppRequestFailureImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppRequestFailureImpl implements AppRequestFailure {
  const _$AppRequestFailureImpl({this.msg = ''});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'AppFailure.failure(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppRequestFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppRequestFailureImplCopyWith<_$AppRequestFailureImpl> get copyWith =>
      __$$AppRequestFailureImplCopyWithImpl<_$AppRequestFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) failure,
    required TResult Function(String msg) success,
  }) {
    return failure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? failure,
    TResult? Function(String msg)? success,
  }) {
    return failure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? failure,
    TResult Function(String msg)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppRequestFailure value) failure,
    required TResult Function(AppRequestSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppRequestFailure value)? failure,
    TResult? Function(AppRequestSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppRequestFailure value)? failure,
    TResult Function(AppRequestSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AppRequestFailure implements AppFailure {
  const factory AppRequestFailure({final String msg}) = _$AppRequestFailureImpl;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$AppRequestFailureImplCopyWith<_$AppRequestFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppRequestSuccessImplCopyWith<$Res>
    implements $AppFailureCopyWith<$Res> {
  factory _$$AppRequestSuccessImplCopyWith(_$AppRequestSuccessImpl value,
          $Res Function(_$AppRequestSuccessImpl) then) =
      __$$AppRequestSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$AppRequestSuccessImplCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res, _$AppRequestSuccessImpl>
    implements _$$AppRequestSuccessImplCopyWith<$Res> {
  __$$AppRequestSuccessImplCopyWithImpl(_$AppRequestSuccessImpl _value,
      $Res Function(_$AppRequestSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$AppRequestSuccessImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppRequestSuccessImpl implements AppRequestSuccess {
  const _$AppRequestSuccessImpl({this.msg = ''});

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'AppFailure.success(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppRequestSuccessImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppRequestSuccessImplCopyWith<_$AppRequestSuccessImpl> get copyWith =>
      __$$AppRequestSuccessImplCopyWithImpl<_$AppRequestSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) failure,
    required TResult Function(String msg) success,
  }) {
    return success(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? failure,
    TResult? Function(String msg)? success,
  }) {
    return success?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? failure,
    TResult Function(String msg)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppRequestFailure value) failure,
    required TResult Function(AppRequestSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppRequestFailure value)? failure,
    TResult? Function(AppRequestSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppRequestFailure value)? failure,
    TResult Function(AppRequestSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AppRequestSuccess implements AppFailure {
  const factory AppRequestSuccess({final String msg}) = _$AppRequestSuccessImpl;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$AppRequestSuccessImplCopyWith<_$AppRequestSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
