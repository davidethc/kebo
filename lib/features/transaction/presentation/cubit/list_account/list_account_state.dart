part of 'list_account_cubit.dart';

@freezed
class ListAccountState with _$ListAccountState {
  const ListAccountState._();

  const factory ListAccountState({
    AppFailure? failure,
    @Default(false) bool isLoading,
    @Default('') String keyword,
    @Default([]) List<InstitutionEntity> result,
    @Default([]) List<InstitutionEntity> institutions,
  }) = _ListAccountState;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
