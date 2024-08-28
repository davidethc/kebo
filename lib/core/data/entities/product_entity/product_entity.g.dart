// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductEntityImpl _$$ProductEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProductEntityImpl(
      id: json['id'] as String? ?? '',
      link: json['link'] as String? ?? '',
      category: json['category'] as String? ?? '',
      name: json['name'] as String? ?? '',
      synchronized: json['synchronized'] as bool? ?? false,
      institution: json['institution'] as String? ?? '',
    );

Map<String, dynamic> _$$ProductEntityImplToJson(_$ProductEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'category': instance.category,
      'name': instance.name,
      'synchronized': instance.synchronized,
      'institution': instance.institution,
    };
