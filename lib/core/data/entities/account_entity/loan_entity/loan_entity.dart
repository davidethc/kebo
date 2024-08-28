// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_entity.freezed.dart';
part 'loan_entity.g.dart';

@freezed
class LoanEntity with _$LoanEntity {
  const LoanEntity._();

  const factory LoanEntity({
    @JsonKey(name: 'collected_at') @Default('') String collectedAt,
    @JsonKey(name: 'credit_limit') @Default(0) int creditLimit,
  }) = _LoanEntity;

  factory LoanEntity.fromJson(Map<String, Object?> json) =>
      _$LoanEntityFromJson(json);
}
