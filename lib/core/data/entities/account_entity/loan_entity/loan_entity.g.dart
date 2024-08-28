// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanEntityImpl _$$LoanEntityImplFromJson(Map<String, dynamic> json) =>
    _$LoanEntityImpl(
      collectedAt: json['collected_at'] as String? ?? '',
      creditLimit: json['credit_limit'] as int? ?? 0,
    );

Map<String, dynamic> _$$LoanEntityImplToJson(_$LoanEntityImpl instance) =>
    <String, dynamic>{
      'collected_at': instance.collectedAt,
      'credit_limit': instance.creditLimit,
    };
