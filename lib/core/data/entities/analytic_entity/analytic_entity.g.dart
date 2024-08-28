// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytic_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticEntityImpl _$$AnalyticEntityImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticEntityImpl(
      id: json['id'] as String? ?? '',
      cant: json['cant'] as int? ?? 0,
      message: json['message'] as String? ?? '',
      category: json['category'] as String? ?? '',
      date: json['date'] as String? ?? '',
    );

Map<String, dynamic> _$$AnalyticEntityImplToJson(
        _$AnalyticEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cant': instance.cant,
      'message': instance.message,
      'category': instance.category,
      'date': instance.date,
    };
