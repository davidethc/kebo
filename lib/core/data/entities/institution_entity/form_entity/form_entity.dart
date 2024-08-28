// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_entity/value_entity.dart';

part 'form_entity.freezed.dart';
part 'form_entity.g.dart';

@freezed
class FormEntity with _$FormEntity {
  const FormEntity._();

  const factory FormEntity({
    @Default('') String name,
    @Default('') String type,
    @Default('') String label,
    @Default('') String validation,
    @Default('') String placeholder,
    @Default([]) List<ValueEntity> values,
    @JsonKey(name: 'validation_message') @Default('') String validationMessage,
  }) = _FormEntity;

  factory FormEntity.fromJson(Map<String, Object?> json) =>
      _$FormEntityFromJson(json);
}
