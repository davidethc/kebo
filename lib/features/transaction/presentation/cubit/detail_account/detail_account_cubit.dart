import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/transaction_entity/transaction_entity.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import '../../../../../core/data/errors/app_failure.dart';

part 'detail_account_state.dart';
part 'detail_account_cubit.freezed.dart';

@Injectable()
class DetailAccountCubit extends Cubit<DetailAccountState> {
  final AccountService _accountService;
  DetailAccountCubit(
    this._accountService,
  ) : super(const DetailAccountState());
  int page = 1;

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void initial({
    required String id,
  }) async {
    page == 1;
    emit(state.copyWith(isLoading: true));
    final res =
        await _accountService.getTransactionByAccount(id: id, page: page);
    res.fold((left) => emit(state.copyWith(isLoading: false, failure: left)),
        (right) {
      List<TransactionEntity> transactions = [];
      right.forEach((e) => transactions.add(TransactionEntity.fromJson(e)));
      emit(
        state.copyWith(
          transactions: transactions,
          isLoading: false,
        ),
      );
    });
  }

  void onLoadMore({
    required String id,
  }) async {
    page++;
    final res =
        await _accountService.getTransactionByAccount(id: id, page: page);
    res.fold((left) => emit(state.copyWith(isLoading: false, failure: left)),
        (right) {
      List<TransactionEntity> transactions = [];
      right.forEach((e) => transactions.add(TransactionEntity.fromJson(e)));
      emit(
        state.copyWith(
          transactions: [...state.transactions, ...transactions],
          isLoading: false,
        ),
      );
    });
  }

  void onDeleteTransaction(String id) async {
    emit(state.copyWith(isProcessing: true));
    final res = await _accountService.deleteTransaction(id: id);
    res.fold(
      (left) => emit(state.copyWith(isProcessing: false, failure: left)),
      (right) {
        List<TransactionEntity> transactions = state.transactions.toList();
        transactions.removeWhere((element) => element.id == id);
        emit(
          state.copyWith(
            isProcessing: false,
            transactions: transactions,
            failure:
                AppFailure.success(msg: S.current.deleteTransactionSuccess),
          ),
        );
      },
    );
  }
}
