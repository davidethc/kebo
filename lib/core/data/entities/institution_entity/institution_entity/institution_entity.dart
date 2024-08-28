// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kebo_app/core/data/entities/institution_entity/form_entity/form_entity.dart';
import 'package:kebo_app/core/data/entities/institution_entity/value_entity/value_entity.dart';

part 'institution_entity.freezed.dart';
part 'institution_entity.g.dart';

@freezed
class InstitutionEntity with _$InstitutionEntity {
  const InstitutionEntity._();

  const factory InstitutionEntity({
    @JsonKey(name: '_id') @Default('') String id,
    @Default('') String name,
    @Default('') String code,
    @JsonKey(name: 'display_name') @Default('') String displayName,
    @Default('') String logo,
    @JsonKey(name: 'country_code') @Default('') String countryCode,
    @Default([]) List<String> resources,
    @JsonKey(name: 'form_fields') @Default([]) List<FormEntity> formFields,
  }) = _InstitutionEntity;

  factory InstitutionEntity.fromJson(Map<String, Object?> json) =>
      _$InstitutionEntityFromJson(json);
}
