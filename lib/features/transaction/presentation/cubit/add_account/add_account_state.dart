part of 'add_account_cubit.dart';

@freezed
class AddAccountState with _$AddAccountState {
  const AddAccountState._();

  const factory AddAccountState({
    @Default('') String name,
    @Default('') String description,
    @Default('') String balance,
    @Default('') String id,
    AppInputErrorRequired? errorName,
    AppInputErrorRequired? errorBalance,
    AppInputErrorRequired? errorDescription,
    AppFailure? failure,
    @Default(false) bool focusStatusBalance,
    @Default(false) bool focusStatusName,
    @Default(false) bool focusStatusDescription,
    @Default(false) bool isLoading,
    @Default(false) bool isDone,
  }) = _AddAccountState;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
