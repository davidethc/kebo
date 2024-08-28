// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_entity.freezed.dart';
part 'login_response_entity.g.dart';

@freezed
class LoginResponseEntity with _$LoginResponseEntity {
  const LoginResponseEntity._();

  const factory LoginResponseEntity({
    @JsonKey(name: 'AccessToken') @Default('') String accessToken,
    @JsonKey(name: 'ExpiresIn') @Default(0) int id,
    @JsonKey(name: 'TokenType') @Default('') String tokenType,
    @JsonKey(name: 'RefreshToken') @Default('') String refreshToken,
  }) = _LoginResponseEntity;

  factory LoginResponseEntity.fromJson(Map<String, Object?> json) =>
      _$LoginResponseEntityFromJson(json);
}
