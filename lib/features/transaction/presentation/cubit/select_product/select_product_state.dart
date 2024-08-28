part of 'select_product_cubit.dart';

@freezed
class SelectProductState with _$SelectProductState {
  const SelectProductState._();

  const factory SelectProductState({
    @Default([]) List<ProductEntity> accounts,
    @Default([]) List<int> selected,
    AppFailure? failure,
    @Default(false) bool isLoading,
    @Default(false) bool isProcessing,
    @Default(false) bool isDone,
  }) = _SelectProductState;

  bool get isAnythingLoading => isProcessing;

  bool get isNothingLoading => !isAnythingLoading;
}
