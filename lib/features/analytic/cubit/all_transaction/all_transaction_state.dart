part of 'all_transaction_cubit.dart';

@freezed
class AllTransactionState with _$AllTransactionState {
  const AllTransactionState._();

  const factory AllTransactionState({
    AppFailure? failure,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingAccount,
    @Default([]) List<TransactionEntity> transactions,
  }) = _AllTransactionState;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
