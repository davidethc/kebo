part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const EditProfileState._();

  const factory EditProfileState({
    @Default('') String name,
    @Default('') String familyName,
    AppInputErrorRequired? errorName,
    AppInputErrorRequired? errorFamilyName,
    @Default(false) bool focusStatusName,
    @Default(false) bool focusStatusFamilyName,
    @Default(Gender.male) Gender gender,
    AppFailure? failure,
    DateTime? birthDate,
    UserEntity? currentUser,
    @Default(false) bool isLoading,
    @Default(false) bool isProcessing,
  }) = _EditProfileState;

  bool get isAnythingLoading => isProcessing;

  bool get isNothingLoading => !isAnythingLoading;
}
