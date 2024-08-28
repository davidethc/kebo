// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseEntityImpl _$$LoginResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseEntityImpl(
      accessToken: json['AccessToken'] as String? ?? '',
      id: json['ExpiresIn'] as int? ?? 0,
      tokenType: json['TokenType'] as String? ?? '',
      refreshToken: json['RefreshToken'] as String? ?? '',
    );

Map<String, dynamic> _$$LoginResponseEntityImplToJson(
        _$LoginResponseEntityImpl instance) =>
    <String, dynamic>{
      'AccessToken': instance.accessToken,
      'ExpiresIn': instance.id,
      'TokenType': instance.tokenType,
      'RefreshToken': instance.refreshToken,
    };
