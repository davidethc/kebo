import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/entities.dart';
import 'package:kebo_app/core/data/providers/user_provider.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import '../../../../../core/data/errors/app_failure.dart';

part 'search_category_state.dart';
part 'search_category_cubit.freezed.dart';

@Injectable()
class SearchCategoryCubit extends Cubit<SearchCategoryState> {
  final AccountService _accountService;
  final UserProvider _userProvider;
  SearchCategoryCubit(
    this._accountService,
    this._userProvider,
  ) : super(const SearchCategoryState());

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void initial({
    required bool hasLoading,
  }) async {
    if (hasLoading) emit(state.copyWith(isLoading: true));
    final res = await _accountService.getCategory();
    res.fold((left) => emit(state.copyWith(isLoading: false, failure: left)),
        (right) {
      List<CategoryEntity> categories = [];
      right.forEach((e) => categories.add(CategoryEntity.fromJson(e)));
      emit(
        state.copyWith(
          categories: categories,
          isLoading: false,
        ),
      );
    });
  }

  void onChangedSearch(String keyword) {
    List<CategoryEntity> result = state.categories
        .where((item) => item.id.toLowerCase().contains(keyword.toLowerCase()))
        .toList();
    emit(state.copyWith(search: keyword, result: result));
  }

  void onAddSubcategory({
    required String id,
    required String category,
    required String subcategory,
  }) async {
    final res = await _accountService.addSubcategory(
      id: id,
      category: category,
      subCategory: subcategory,
      userid: _userProvider.currentUser.sub,
    );
    res.fold(
      (left) => emit(state.copyWith(isLoading: false, failure: left)),
      (right) {
        emit(
          state.copyWith(
            isLoading: false,
            isDone: true,
            failure: AppFailure.success(msg: S.current.addSubcategorySuccess),
          ),
        );
        emit(state.copyWith(isDone: false));
      },
    );
  }
}
