// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_line_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardLineEntityImpl _$$DashboardLineEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardLineEntityImpl(
      percent: json['percent'] as String? ?? '',
      currentMonth: (json['currentMonth'] as num?)?.toDouble() ?? 0,
      lastMonth: (json['lastMonth'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$DashboardLineEntityImplToJson(
        _$DashboardLineEntityImpl instance) =>
    <String, dynamic>{
      'percent': instance.percent,
      'currentMonth': instance.currentMonth,
      'lastMonth': instance.lastMonth,
    };
