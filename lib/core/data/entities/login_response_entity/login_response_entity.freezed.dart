// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseEntity _$LoginResponseEntityFromJson(Map<String, dynamic> json) {
  return _LoginResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseEntity {
  @JsonKey(name: 'AccessToken')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExpiresIn')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'TokenType')
  String get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'RefreshToken')
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseEntityCopyWith<LoginResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseEntityCopyWith<$Res> {
  factory $LoginResponseEntityCopyWith(
          LoginResponseEntity value, $Res Function(LoginResponseEntity) then) =
      _$LoginResponseEntityCopyWithImpl<$Res, LoginResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'AccessToken') String accessToken,
      @JsonKey(name: 'ExpiresIn') int id,
      @JsonKey(name: 'TokenType') String tokenType,
      @JsonKey(name: 'RefreshToken') String refreshToken});
}

/// @nodoc
class _$LoginResponseEntityCopyWithImpl<$Res, $Val extends LoginResponseEntity>
    implements $LoginResponseEntityCopyWith<$Res> {
  _$LoginResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? id = null,
    Object? tokenType = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResponseEntityImplCopyWith<$Res>
    implements $LoginResponseEntityCopyWith<$Res> {
  factory _$$LoginResponseEntityImplCopyWith(_$LoginResponseEntityImpl value,
          $Res Function(_$LoginResponseEntityImpl) then) =
      __$$LoginResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'AccessToken') String accessToken,
      @JsonKey(name: 'ExpiresIn') int id,
      @JsonKey(name: 'TokenType') String tokenType,
      @JsonKey(name: 'RefreshToken') String refreshToken});
}

/// @nodoc
class __$$LoginResponseEntityImplCopyWithImpl<$Res>
    extends _$LoginResponseEntityCopyWithImpl<$Res, _$LoginResponseEntityImpl>
    implements _$$LoginResponseEntityImplCopyWith<$Res> {
  __$$LoginResponseEntityImplCopyWithImpl(_$LoginResponseEntityImpl _value,
      $Res Function(_$LoginResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? id = null,
    Object? tokenType = null,
    Object? refreshToken = null,
  }) {
    return _then(_$LoginResponseEntityImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseEntityImpl extends _LoginResponseEntity {
  const _$LoginResponseEntityImpl(
      {@JsonKey(name: 'AccessToken') this.accessToken = '',
      @JsonKey(name: 'ExpiresIn') this.id = 0,
      @JsonKey(name: 'TokenType') this.tokenType = '',
      @JsonKey(name: 'RefreshToken') this.refreshToken = ''})
      : super._();

  factory _$LoginResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: 'AccessToken')
  final String accessToken;
  @override
  @JsonKey(name: 'ExpiresIn')
  final int id;
  @override
  @JsonKey(name: 'TokenType')
  final String tokenType;
  @override
  @JsonKey(name: 'RefreshToken')
  final String refreshToken;

  @override
  String toString() {
    return 'LoginResponseEntity(accessToken: $accessToken, id: $id, tokenType: $tokenType, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseEntityImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, id, tokenType, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseEntityImplCopyWith<_$LoginResponseEntityImpl> get copyWith =>
      __$$LoginResponseEntityImplCopyWithImpl<_$LoginResponseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseEntity extends LoginResponseEntity {
  const factory _LoginResponseEntity(
          {@JsonKey(name: 'AccessToken') final String accessToken,
          @JsonKey(name: 'ExpiresIn') final int id,
          @JsonKey(name: 'TokenType') final String tokenType,
          @JsonKey(name: 'RefreshToken') final String refreshToken}) =
      _$LoginResponseEntityImpl;
  const _LoginResponseEntity._() : super._();

  factory _LoginResponseEntity.fromJson(Map<String, dynamic> json) =
      _$LoginResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: 'AccessToken')
  String get accessToken;
  @override
  @JsonKey(name: 'ExpiresIn')
  int get id;
  @override
  @JsonKey(name: 'TokenType')
  String get tokenType;
  @override
  @JsonKey(name: 'RefreshToken')
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseEntityImplCopyWith<_$LoginResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
