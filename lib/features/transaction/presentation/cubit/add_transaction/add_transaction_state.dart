part of 'add_transaction_cubit.dart';

@freezed
class AddTransactionState with _$AddTransactionState {
  const AddTransactionState._();

  const factory AddTransactionState({
    @Default('') String amount,
    @Default('') String merchant,
    @Default('') String merchantWebsite,
    @Default('') String description,
    DateTime? valueDate,
    @Default([]) List<CategoryEntity> categories,
    @Default([]) List<SubcategoryEntity> subcategories,
    @Default([]) List<TypeTransaction> type,
    @Default(-1) int indexCategory,
    @Default(-1) int indexSubcategory,
    @Default(-1) int indexType,
    @Default(false) bool errorCategory,
    @Default(false) bool errorSubcategory,
    @Default(false) bool errorType,
    AppInputErrorRequired? errorAmount,
    AppInputErrorRequired? errorMerchant,
    AppInputErrorRequired? errorMerchantWebsite,
    AppInputErrorRequired? errorDescription,
    AppFailure? failure,
    @Default(false) bool focusStatusAmount,
    @Default(false) bool focusStatusMerchant,
    @Default(false) bool focusStatusMerchantWebsite,
    @Default(false) bool focusStatusDescription,
    @Default(false) bool isLoading,
    @Default(false) bool isProcessing,
    @Default(false) bool isDone,
  }) = _AddTransactionState;

  bool get isAnythingLoading => isProcessing;

  bool get isNothingLoading => !isAnythingLoading;
}
