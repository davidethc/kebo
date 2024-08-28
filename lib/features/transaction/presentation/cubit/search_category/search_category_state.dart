part of 'search_category_cubit.dart';

@freezed
class SearchCategoryState with _$SearchCategoryState {
  const SearchCategoryState._();

  const factory SearchCategoryState({
    @Default('') String search,
    AppFailure? failure,
    @Default(false) bool isLoading,
    @Default(false) bool isDone,
    @Default([]) List<CategoryEntity> categories,
    @Default([]) List<CategoryEntity> result,
  }) = _SearchCategoryState;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
