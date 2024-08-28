// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'institution_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstitutionEntityImpl _$$InstitutionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$InstitutionEntityImpl(
      id: json['_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      code: json['code'] as String? ?? '',
      displayName: json['display_name'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
      countryCode: json['country_code'] as String? ?? '',
      resources: (json['resources'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      formFields: (json['form_fields'] as List<dynamic>?)
              ?.map((e) => FormEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$InstitutionEntityImplToJson(
        _$InstitutionEntityImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'display_name': instance.displayName,
      'logo': instance.logo,
      'country_code': instance.countryCode,
      'resources': instance.resources,
      'form_fields': instance.formFields,
    };
