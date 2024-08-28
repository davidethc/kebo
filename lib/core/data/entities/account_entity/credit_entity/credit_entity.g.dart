// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreditEntityImpl _$$CreditEntityImplFromJson(Map<String, dynamic> json) =>
    _$CreditEntityImpl(
      collectedAt: json['collected_at'] as String? ?? '',
      creditLimit: json['credit_limit'] as int? ?? 0,
      cuttingDate: json['cutting_date'] as String? ?? '',
      nextPaymentDate: json['next_payment_date'] as String? ?? '',
      minimumPayment: json['minimum_payment'] as int? ?? 0,
      monthlyPayment: json['monthly_payment'] as int? ?? 0,
      noInterestPayment: json['no_interest_payment'] as int? ?? 0,
      lastPaymentDate: json['last_payment_date'] as String? ?? '',
      lastPeriodBalance: json['last_period_balance'] as int? ?? 0,
      interestRate: json['interest_rate'] as int? ?? 0,
    );

Map<String, dynamic> _$$CreditEntityImplToJson(_$CreditEntityImpl instance) =>
    <String, dynamic>{
      'collected_at': instance.collectedAt,
      'credit_limit': instance.creditLimit,
      'cutting_date': instance.cuttingDate,
      'next_payment_date': instance.nextPaymentDate,
      'minimum_payment': instance.minimumPayment,
      'monthly_payment': instance.monthlyPayment,
      'no_interest_payment': instance.noInterestPayment,
      'last_payment_date': instance.lastPaymentDate,
      'last_period_balance': instance.lastPeriodBalance,
      'interest_rate': instance.interestRate,
    };
