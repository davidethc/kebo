// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormEntityImpl _$$FormEntityImplFromJson(Map<String, dynamic> json) =>
    _$FormEntityImpl(
      name: json['name'] as String? ?? '',
      type: json['type'] as String? ?? '',
      label: json['label'] as String? ?? '',
      validation: json['validation'] as String? ?? '',
      placeholder: json['placeholder'] as String? ?? '',
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => ValueEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      validationMessage: json['validation_message'] as String? ?? '',
    );

Map<String, dynamic> _$$FormEntityImplToJson(_$FormEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'label': instance.label,
      'validation': instance.validation,
      'placeholder': instance.placeholder,
      'values': instance.values,
      'validation_message': instance.validationMessage,
    };
