// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kebo_app/core/data/entities/category_entity/subcategory_entity/subcategory_entity.dart';

part 'category_entity.freezed.dart';
part 'category_entity.g.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const CategoryEntity._();

  const factory CategoryEntity({
    @JsonKey(name: '_id') @Default('') String id,
    @Default('') String icon,
    @Default([]) List<SubcategoryEntity> categoria,
  }) = _CategoryEntity;

  factory CategoryEntity.fromJson(Map<String, Object?> json) =>
      _$CategoryEntityFromJson(json);
}
