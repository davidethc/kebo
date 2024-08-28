// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'institution_account_entity.freezed.dart';
part 'institution_account_entity.g.dart';

@freezed
class InstitutionAccountEntity with _$InstitutionAccountEntity {
  const InstitutionAccountEntity._();

  const factory InstitutionAccountEntity({
    @Default('') String name,
    @Default('') String type,
  }) = _InstitutionAccountEntity;

  factory InstitutionAccountEntity.fromJson(Map<String, Object?> json) =>
      _$InstitutionAccountEntityFromJson(json);
}
