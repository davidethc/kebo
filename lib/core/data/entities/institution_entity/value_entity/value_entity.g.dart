// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValueEntityImpl _$$ValueEntityImplFromJson(Map<String, dynamic> json) =>
    _$ValueEntityImpl(
      code: json['code'] as String? ?? '',
      label: json['label'] as String? ?? '',
      validation: json['validation'] as String? ?? '',
      validationMessage: json['validation_message'] as String? ?? '',
      placeholder: json['placeholder'] as String? ?? '',
    );

Map<String, dynamic> _$$ValueEntityImplToJson(_$ValueEntityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'label': instance.label,
      'validation': instance.validation,
      'validation_message': instance.validationMessage,
      'placeholder': instance.placeholder,
    };
