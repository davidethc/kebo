part of 'transaction_cubit.dart';

@freezed
class TransactionState with _$TransactionState {
  const TransactionState._();

  const factory TransactionState({
    AppFailure? failure,
    @Default(false) bool isShowMore,
    @Default(false) bool isProcessing,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingAccount,
    @Default([]) List<TransactionEntity> transactions,
    @Default([]) List<AccountEntity> accounts,
    @Default(0) double balance,
  }) = _TransactionState;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
