part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState({
    @Default('') String username,
    @Default('') String password,
    AppInputErrorRequired? errorUsername,
    AppInputErrorPassword? errorPassword,
    @Default(false) bool focusStatusUsername,
    @Default(false) bool focusStatusPassword,
    @Default(false) bool passwordVisibilityStatus,
    AppFailure? authFailure,
    @Default(false) bool isLoading,
    @Default(false) bool navigateToSplash,
    @Default(false) bool navigateToRegistration,
    @Default(false) bool navigateToForget,
    @Default(false) bool hasBiometrics,
    @Default(false) bool hasFaceID,
    @Default(false) bool isProcessing,
    @Default(false) bool isPhone,
    PhoneNumber? phoneNumber,
    @Default('+57') String countryCode,
  }) = _LoginState;

  String get getPhoneNumber => countryCode + username;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}

enum LoginType { google, apple }
