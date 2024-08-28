part of 'forget_password_cubit.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const ForgetPasswordState._();

  const factory ForgetPasswordState({
    @Default('') String username,
    AppInputErrorRequired? errorUsername,
    @Default(false) bool focusStatusUsername,
    @Default('') String password,
    @Default('') String confirmPassword,
    AppInputErrorPassword? errorPassword,
    AppInputErrorConfirmPassword? errorConfirmPassword,
    @Default(false) bool passwordVisibilityStatus,
    @Default(false) bool confirmPasswordVisibilityStatus,
    @Default(false) bool focusStatusPassword,
    @Default(false) bool focusStatusConfirmPassword,
    AppFailure? authFailure,
    @Default('') String otp,
    @Default(false) bool isLoading,
    @Default(false) bool isDone,
    @Default(false) bool isBack,
    @Default(0) int currentPage,
    PhoneNumber? phoneNumber,
    @Default(false) bool isPhone,
    @Default('+57') String countryCode,
  }) = _ForgetPasswordState;

  String get getPhoneNumber => countryCode + username;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
