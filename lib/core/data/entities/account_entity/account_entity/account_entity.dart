// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kebo_app/core/data/entities/account_entity/balance_entity/balance_entity.dart';
import 'package:kebo_app/core/data/entities/account_entity/credit_entity/credit_entity.dart';
import 'package:kebo_app/core/data/entities/account_entity/institution_account_entity/institution_account_entity.dart';
import 'package:kebo_app/core/data/entities/account_entity/loan_entity/loan_entity.dart';

part 'account_entity.freezed.dart';
part 'account_entity.g.dart';

@freezed
class AccountEntity with _$AccountEntity {
  const AccountEntity._();

  const factory AccountEntity({
    @Default('') String id,
    @Default('') String category,
    @Default('') String name,
    @Default('') String number,
    @JsonKey(name: 'credit_data') CreditEntity? creditData,
    @JsonKey(name: 'loan_data') LoanEntity? loanData,
    InstitutionAccountEntity? institution,
    BalanceEntity? balance,
  }) = _AccountEntity;

  factory AccountEntity.fromJson(Map<String, Object?> json) =>
      _$AccountEntityFromJson(json);

  String get getNumber {
    if (number.isEmpty) return '';
    if (number == '1') return '';
    if (number.length < 4) return '**** $number';
    return '**** ${number.substring(0, 4)}';
  }

  bool get hasManual =>
      institution?.name == 'kebo' && institution?.type == 'manual';
  bool get hasDetail =>
      categories.indexWhere(
          (element) => element.toLowerCase() == category.toLowerCase()) !=
      -1;
}

List<String> categories = [
  'CHECKING_ACCOUNT',
  'SAVINGS_ACCOUNT',
  'INVESTMENT_ACCOUNT',
  'PENSION_FUND_ACCOUNT',
  'UNCATEGORIZED',
  'CREDIT_CARD',
  'custom_account'
];
