// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryEntityImpl _$$CategoryEntityImplFromJson(Map<String, dynamic> json) =>
    _$CategoryEntityImpl(
      id: json['_id'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      categoria: (json['categoria'] as List<dynamic>?)
              ?.map(
                  (e) => SubcategoryEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoryEntityImplToJson(
        _$CategoryEntityImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'icon': instance.icon,
      'categoria': instance.categoria,
    };
