// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
class ProductEntity with _$ProductEntity {
  const ProductEntity._();

  const factory ProductEntity({
    @Default('') String id,
    @Default('') String link,
    @Default('') String category,
    @Default('') String name,
    @Default(false) bool synchronized,
    @Default('') String institution,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, Object?> json) =>
      _$ProductEntityFromJson(json);
}
