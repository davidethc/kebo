import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/category_entity/subcategory_entity/subcategory_entity.dart';
import 'package:kebo_app/core/data/enums/type_transaction.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import '../../../../../core/data/entities/entities.dart';
import '../../../../../core/data/errors/app_failure.dart';
import '../../../../../core/data/errors/app_input_errors.dart';
import '../../../../../core/utils/validators/app_validators.dart';

part 'add_transaction_state.dart';
part 'add_transaction_cubit.freezed.dart';

@Injectable()
class AddTransactionCubit extends Cubit<AddTransactionState> {
  final AccountService _accountService;

  AddTransactionCubit(
    this._accountService,
  ) : super(const AddTransactionState());

  void initial() async {
    emit(
      state.copyWith(
        isLoading: true,
        type: TypeTransaction.values,
        valueDate: DateTime.now(),
      ),
    );
    final res = await _accountService.getCategory();
    res.fold((left) => emit(state.copyWith(isLoading: false, failure: left)),
        (right) {
      List<CategoryEntity> categories = [];
      right.forEach((e) => categories.add(CategoryEntity.fromJson(e)));
      emit(
        state.copyWith(categories: categories, isLoading: false),
      );
    });
  }

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void onChangedAmount(String amount) {
    emit(state.copyWith(
      amount: amount,
      errorAmount: AppInputValidatorRequired.dirty(amount).error,
    ));
  }

  void onChangedMerchant(String merchant) {
    emit(state.copyWith(
      merchant: merchant,
      errorMerchant: AppInputValidatorRequired.dirty(merchant).error,
    ));
  }

  void onChangedMerchantWebsite(String merchantWebsite) {
    emit(state.copyWith(
      merchantWebsite: merchantWebsite,
      errorMerchantWebsite:
          AppInputValidatorRequired.dirty(merchantWebsite).error,
    ));
  }

  void onChangedDate(DateTime dateTime) =>
      emit(state.copyWith(valueDate: dateTime));

  void onChangedDescription(String description) {
    emit(state.copyWith(
      description: description,
      errorDescription: AppInputValidatorRequired.dirty(description).error,
    ));
  }

  void onFocusChangedAmount(bool focused) {
    emit(state.copyWith(
      focusStatusAmount: focused,
      errorAmount:
          focused ? AppInputValidatorRequired.dirty(state.amount).error : null,
    ));
  }

  void onFocusChangedMerchant(bool focused) {
    emit(state.copyWith(
      focusStatusMerchant: focused,
      errorMerchant: focused
          ? AppInputValidatorRequired.dirty(state.merchant).error
          : null,
    ));
  }

  void onFocusChangedMerchantWebsite(bool focused) {
    emit(state.copyWith(
      focusStatusMerchantWebsite: focused,
      errorMerchantWebsite: focused
          ? AppInputValidatorRequired.dirty(state.merchantWebsite).error
          : null,
    ));
  }

  void onFocusChangedDescription(bool focused) {
    emit(state.copyWith(
      focusStatusDescription: focused,
      errorDescription: focused
          ? AppInputValidatorRequired.dirty(state.description).error
          : null,
    ));
  }

  void onChangedType(int index) => emit(state.copyWith(indexType: index));

  void onChangedCategory(int index) => emit(
        state.copyWith(
          indexCategory: index,
          subcategories: state.categories[index].categoria,
          indexSubcategory: -1,
        ),
      );

  void onChangedSubcategory(int index) =>
      emit(state.copyWith(indexSubcategory: index));

  Future<void> onSubmit(String id) async {
    emit(state.copyWith(
      errorAmount: AppInputValidatorRequired.dirty(state.amount).error,
      errorDescription:
          AppInputValidatorRequired.dirty(state.description).error,
      errorType: state.indexType == -1,
      errorCategory: state.indexCategory == -1,
      errorSubcategory: state.indexSubcategory == -1,
    ));
    if (state.errorDescription != null ||
        state.errorType ||
        state.errorCategory ||
        state.errorSubcategory) {
      return;
    }
    emit(state.copyWith(isProcessing: true));
    final result = await _accountService.addManualTransaction(
      accountId: id,
      amount: state.amount.replaceAll(',', ''),
      description: state.description,
      category: state.categories[state.indexCategory].id,
      subCategory: state.subcategories[state.indexSubcategory].subcategoria,
      merchant: state.merchant,
      merchantWebsite: state.merchantWebsite,
      type: state.type[state.indexType].asType(),
      date: state.valueDate!.dateFormat,
    );
    result.fold(
      (l) => emit(state.copyWith(failure: l, isProcessing: false)),
      (r) => emit(
        state.copyWith(
          isDone: true,
          isProcessing: false,
          failure: AppFailure.success(msg: S.current.addTransactionSuccess),
        ),
      ),
    );
  }
}
