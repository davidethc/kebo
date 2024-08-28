// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountEntityImpl _$$AccountEntityImplFromJson(Map<String, dynamic> json) =>
    _$AccountEntityImpl(
      id: json['id'] as String? ?? '',
      category: json['category'] as String? ?? '',
      name: json['name'] as String? ?? '',
      number: json['number'] as String? ?? '',
      creditData: json['credit_data'] == null
          ? null
          : CreditEntity.fromJson(json['credit_data'] as Map<String, dynamic>),
      loanData: json['loan_data'] == null
          ? null
          : LoanEntity.fromJson(json['loan_data'] as Map<String, dynamic>),
      institution: json['institution'] == null
          ? null
          : InstitutionAccountEntity.fromJson(
              json['institution'] as Map<String, dynamic>),
      balance: json['balance'] == null
          ? null
          : BalanceEntity.fromJson(json['balance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountEntityImplToJson(_$AccountEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'number': instance.number,
      'credit_data': instance.creditData,
      'loan_data': instance.loanData,
      'institution': instance.institution,
      'balance': instance.balance,
    };
