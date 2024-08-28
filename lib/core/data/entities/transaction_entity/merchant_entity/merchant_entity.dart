// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_entity.freezed.dart';
part 'merchant_entity.g.dart';

@freezed
class MerchantEntity with _$MerchantEntity {
  const MerchantEntity._();

  const factory MerchantEntity({
    @Default('') String name,
    @Default('') String website,
    @Default('') String logo,
  }) = _MerchantEntity;

  factory MerchantEntity.fromJson(Map<String, Object?> json) =>
      _$MerchantEntityFromJson(json);
}
