// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventEntityImpl _$$EventEntityImplFromJson(Map<String, dynamic> json) =>
    _$EventEntityImpl(
      url: json['url'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      thumnail: json['thumnail'] as String? ?? '',
    );

Map<String, dynamic> _$$EventEntityImplToJson(_$EventEntityImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'description': instance.description,
      'thumnail': instance.thumnail,
    };
