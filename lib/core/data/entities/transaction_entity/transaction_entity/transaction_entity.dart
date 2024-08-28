// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kebo_app/core/data/entities/transaction_entity/merchant_entity/merchant_entity.dart';

part 'transaction_entity.freezed.dart';
part 'transaction_entity.g.dart';

@freezed
class TransactionEntity with _$TransactionEntity {
  const TransactionEntity._();

  const factory TransactionEntity({
    @Default('') String id,
    @Default('') String category,
    @Default('') String subcategory,
    MerchantEntity? merchant,
    @Default('') String type,
    @Default(0.0) double amount,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'collected_at') @Default('') String collectedAt,
    @JsonKey(name: 'value_date') @Default('') String valueDate,
    @Default('') String currency,
    @Default('') String description,
    @Default('') String status,
    @Default('') String institutionName,
  }) = _TransactionEntity;

  factory TransactionEntity.fromJson(Map<String, Object?> json) =>
      _$TransactionEntityFromJson(json);

  bool get isIncome => type == 'INFLOW';
}
