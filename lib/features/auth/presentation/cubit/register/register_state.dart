part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();

  const factory RegisterState({
    @Default('') String email,
    @Default('') String invitedFrom,
    AppInputErrorEmail? errorEmail,
    @Default(false) bool focusStatusEmail,
    @Default('') String firstName,
    AppInputErrorRequired? errorFirstName,
    @Default(false) bool focusStatusFirstName,
    @Default('') String lastName,
    AppInputErrorRequired? errorLastName,
    @Default(false) bool focusStatusLastName,
    Gender? gender,
    @Default(false) bool errorGender,
    @Default('') String phone,
    AppInputErrorPhone? errorPhone,
    @Default(false) bool focusStatusPhone,
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
    @Default(0) int selectedAge,
    @Default('+57') String countryCode,
    @Default('') String idToken,
    @Default('') String username,
    RegisterType? type,
  }) = _RegisterState;

  String get phoneNumber => countryCode + phone;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}

enum RegisterType { google, apple }
