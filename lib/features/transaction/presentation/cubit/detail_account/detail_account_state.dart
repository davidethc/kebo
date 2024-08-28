part of 'detail_account_cubit.dart';

@freezed
class DetailAccountState with _$DetailAccountState {
  const DetailAccountState._();

  const factory DetailAccountState({
    AppFailure? failure,
    @Default(false) bool isLoading,
    @Default(false) bool isProcessing,
    @Default([]) List<TransactionEntity> transactions,
  }) = _DetailAccountState;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
