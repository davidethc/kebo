// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MerchantEntityImpl _$$MerchantEntityImplFromJson(Map<String, dynamic> json) =>
    _$MerchantEntityImpl(
      name: json['name'] as String? ?? '',
      website: json['website'] as String? ?? '',
      logo: json['logo'] as String? ?? '',
    );

Map<String, dynamic> _$$MerchantEntityImplToJson(
        _$MerchantEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'website': instance.website,
      'logo': instance.logo,
    };
