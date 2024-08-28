part of 'connect_account_cubit.dart';

@freezed
class ConnectAccountState with _$ConnectAccountState {
  const ConnectAccountState._();

  const factory ConnectAccountState({
    @Default(-1) int selectedType,
    @Default('') String username,
    @Default('') String password,
    @Default('') String token,
    @Default([]) List<ValueEntity> listType,
    String? errorUsername,
    String? errorPassword,
    String? errorToken,
    @Default(false) bool passwordVisibilityStatus,
    AppFailure? failure,
    @Default(false) bool focusStatusUsername,
    @Default(false) bool focusStatusPassword,
    @Default(false) bool focusStatusToken,
    @Default(false) bool isLoading,
    @Default(false) bool isProcessing,
    @Default(false) bool processing,
    @Default(false) bool isDone,
    @Default(false) bool errorUsernameType,
    InstitutionEntity? institution,
    FormEntity? usernameTypeForm,
    FormEntity? usernameForm,
    FormEntity? passwordForm,
    FormEntity? tokenForm,
  }) = _ConnectAccountState;

  bool get isAnythingLoading => isProcessing;

  bool get isNothingLoading => !isAnythingLoading;
}
