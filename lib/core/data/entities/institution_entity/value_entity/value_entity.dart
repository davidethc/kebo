// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kebo_app/core/data/entities/institution_entity/form_entity/form_entity.dart';

part 'value_entity.freezed.dart';
part 'value_entity.g.dart';

@freezed
class ValueEntity with _$ValueEntity {
  const ValueEntity._();

  const factory ValueEntity({
    @Default('') String code,
    @Default('') String label,
    @Default('') String validation,
    @JsonKey(name: 'validation_message') @Default('') String validationMessage,
    @Default('') String placeholder,
  }) = _ValueEntity;

  factory ValueEntity.fromJson(Map<String, Object?> json) =>
      _$ValueEntityFromJson(json);
}
