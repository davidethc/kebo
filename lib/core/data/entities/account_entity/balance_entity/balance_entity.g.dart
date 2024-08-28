// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BalanceEntityImpl _$$BalanceEntityImplFromJson(Map<String, dynamic> json) =>
    _$BalanceEntityImpl(
      current: (json['current'] as num?)?.toDouble() ?? 0,
      available: (json['available'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$BalanceEntityImplToJson(_$BalanceEntityImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'available': instance.available,
    };
