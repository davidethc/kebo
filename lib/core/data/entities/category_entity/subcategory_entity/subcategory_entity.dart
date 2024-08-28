// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategory_entity.freezed.dart';
part 'subcategory_entity.g.dart';

@freezed
class SubcategoryEntity with _$SubcategoryEntity {
  const SubcategoryEntity._();

  const factory SubcategoryEntity({
    @Default('') String subcategoria,
  }) = _SubcategoryEntity;

  factory SubcategoryEntity.fromJson(Map<String, Object?> json) =>
      _$SubcategoryEntityFromJson(json);
}
