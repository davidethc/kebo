// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      sub: json['sub'] as String? ?? '',
      birthdate: json['birthdate'] as String? ?? '',
      emailVerified: json['email_verified'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phoneNumberVerified: json['phone_number_verified'] as String? ?? '',
      phoneNumber: json['phone_number'] as String? ?? '',
      familyName: json['family_name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      url: json['url'] as String? ?? '',
      inviteCode: json['inviteCode'] as String? ?? '',
      calendarURL: json['calendarURL'] as String? ?? '',
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'sub': instance.sub,
      'birthdate': instance.birthdate,
      'email_verified': instance.emailVerified,
      'gender': instance.gender,
      'name': instance.name,
      'phone_number_verified': instance.phoneNumberVerified,
      'phone_number': instance.phoneNumber,
      'family_name': instance.familyName,
      'email': instance.email,
      'icon': instance.icon,
      'url': instance.url,
      'inviteCode': instance.inviteCode,
      'calendarURL': instance.calendarURL,
    };
