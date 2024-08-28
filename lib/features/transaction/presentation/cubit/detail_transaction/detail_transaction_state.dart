part of 'detail_transaction_cubit.dart';

@freezed
class DetailTransactionState with _$DetailTransactionState {
  const DetailTransactionState._();

  const factory DetailTransactionState({
    @Default('') String description,
    AppFailure? failure,
    @Default(false) bool isLoading,
    @Default(false) bool isDone,
    TransactionEntity? transaction,
  }) = _DetailTransactionState;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
