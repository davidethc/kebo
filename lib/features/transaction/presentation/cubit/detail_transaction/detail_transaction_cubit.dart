import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/transaction_entity/transaction_entity/transaction_entity.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import '../../../../../core/data/errors/app_failure.dart';

part 'detail_transaction_state.dart';
part 'detail_transaction_cubit.freezed.dart';

@Injectable()
class DetailTransactionCubit extends Cubit<DetailTransactionState> {
  final AccountService _accountService;
  DetailTransactionCubit(
    this._accountService,
  ) : super(const DetailTransactionState());

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void initial({required TransactionEntity transactionEntity}) =>
      emit(state.copyWith(transaction: transactionEntity));

  void onChangedCategory({
    required String id,
    required String value,
  }) async {
    emit(state.copyWith(isLoading: true));
    String category = value.split('||').first;
    String subCategory = value.split('||').last;
    final res = await _accountService.updateCategory(
        id: id, category: category, subCategory: subCategory);
    res.fold((left) => emit(state.copyWith(isLoading: false, failure: left)),
        (right) {
      emit(
        state.copyWith(
          isLoading: false,
          isDone: true,
          transaction: state.transaction
              ?.copyWith(category: category, subcategory: subCategory),
          failure: AppFailure.success(
            msg: S.current.updateDescriptionSucess,
          ),
        ),
      );
    });
  }

  void onUpdateDescription({
    required String id,
    required String description,
  }) async {
    emit(state.copyWith(isLoading: true));
    final res = await _accountService.updateDescription(
        id: id, description: description);
    res.fold((left) => emit(state.copyWith(isLoading: false, failure: left)),
        (right) {
      emit(
        state.copyWith(
          isLoading: false,
          isDone: true,
          transaction: state.transaction?.copyWith(description: description),
          failure: AppFailure.success(
            msg: S.current.updateDescriptionSucess,
          ),
        ),
      );
    });
  }
}
