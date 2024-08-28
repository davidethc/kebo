// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_entity.freezed.dart';
part 'credit_entity.g.dart';

@freezed
class CreditEntity with _$CreditEntity {
  const CreditEntity._();

  const factory CreditEntity({
    @JsonKey(name: 'collected_at') @Default('') String collectedAt,
    @JsonKey(name: 'credit_limit') @Default(0) int creditLimit,
    @JsonKey(name: 'cutting_date') @Default('') String cuttingDate,
    @JsonKey(name: 'next_payment_date') @Default('') String nextPaymentDate,
    @JsonKey(name: 'minimum_payment') @Default(0) int minimumPayment,
    @JsonKey(name: 'monthly_payment') @Default(0) int monthlyPayment,
    @JsonKey(name: 'no_interest_payment') @Default(0) int noInterestPayment,
    @JsonKey(name: 'last_payment_date') @Default('') String lastPaymentDate,
    @JsonKey(name: 'last_period_balance') @Default(0) int lastPeriodBalance,
    @JsonKey(name: 'interest_rate') @Default(0) int interestRate,
  }) = _CreditEntity;

  factory CreditEntity.fromJson(Map<String, Object?> json) =>
      _$CreditEntityFromJson(json);
}
