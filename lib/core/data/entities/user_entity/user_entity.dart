// ignore_for_file: invalid_annotation_target

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kebo_app/core/data/enums/enums.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const UserEntity._();

  const factory UserEntity({
    @Default('') String sub,
    @Default('') String birthdate,
    @JsonKey(name: 'email_verified') @Default('') String emailVerified,
    @Default('') String gender,
    @Default('') String name,
    @JsonKey(name: 'phone_number_verified')
    @Default('')
    String phoneNumberVerified,
    @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
    @JsonKey(name: 'family_name') @Default('') String familyName,
    @Default('') String email,
    @Default('') String icon,
    @Default('') String url,
    @Default('') String inviteCode,
    @Default('') String calendarURL,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json) =>
      _$UserEntityFromJson(json);

  String get getLink => '$url$inviteCode';

  Gender get getGender =>
      Gender.values.firstWhereOrNull((e) => e.value() == gender) ?? Gender.male;
}
