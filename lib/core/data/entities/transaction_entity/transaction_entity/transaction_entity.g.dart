// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionEntityImpl _$$TransactionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionEntityImpl(
      id: json['id'] as String? ?? '',
      category: json['category'] as String? ?? '',
      subcategory: json['subcategory'] as String? ?? '',
      merchant: json['merchant'] == null
          ? null
          : MerchantEntity.fromJson(json['merchant'] as Map<String, dynamic>),
      type: json['type'] as String? ?? '',
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      createdAt: json['created_at'] as String? ?? '',
      collectedAt: json['collected_at'] as String? ?? '',
      valueDate: json['value_date'] as String? ?? '',
      currency: json['currency'] as String? ?? '',
      description: json['description'] as String? ?? '',
      status: json['status'] as String? ?? '',
      institutionName: json['institutionName'] as String? ?? '',
    );

Map<String, dynamic> _$$TransactionEntityImplToJson(
        _$TransactionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'merchant': instance.merchant,
      'type': instance.type,
      'amount': instance.amount,
      'created_at': instance.createdAt,
      'collected_at': instance.collectedAt,
      'value_date': instance.valueDate,
      'currency': instance.currency,
      'description': instance.description,
      'status': instance.status,
      'institutionName': instance.institutionName,
    };
