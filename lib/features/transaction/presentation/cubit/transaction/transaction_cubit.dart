import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/account_entity/account_entity.dart';
import 'package:kebo_app/core/data/entities/transaction_entity/transaction_entity.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import 'package:kebo_app/core/data/services/report_service.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import '../../../../../core/data/errors/app_failure.dart';

part 'transaction_state.dart';
part 'transaction_cubit.freezed.dart';

@Injectable()
class TransactionCubit extends Cubit<TransactionState> {
  final ReportService _reportService;
  final AccountService _accountService;
  TransactionCubit(this._reportService, this._accountService)
      : super(const TransactionState());

  int page = 1;

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void initial() async {
    emit(state.copyWith(isShowMore: false));
    _onLoadBalance();
    _onLoadTransaction();
    _onLoadAccount();
  }

  void onDeleteAccount(String id) async {
    emit(state.copyWith(isProcessing: true));
    final res = await _accountService.deleteAccount(id: id);
    res.fold(
      (left) => emit(state.copyWith(isProcessing: false, failure: left)),
      (right) {
        List<AccountEntity> accounts = state.accounts.toList();
        accounts.removeWhere((element) => element.id == id);
        emit(
          state.copyWith(
            isProcessing: false,
            accounts: accounts,
            failure: AppFailure.success(msg: S.current.deleteAccountSuccess),
          ),
        );
      },
    );
  }

  void onShowMore() => emit(state.copyWith(isShowMore: !state.isShowMore));

  void _onLoadBalance() async {
    emit(state.copyWith(isLoadingAccount: true));
    final res = await _reportService.getBalance();
    res.fold(
      (left) => emit(state.copyWith(isLoadingAccount: false, failure: left)),
      (right) => emit(
        state.copyWith(
          isLoadingAccount: false,
          balance: right.first['balance'].toDouble(),
        ),
      ),
    );
  }

  void _onLoadAccount() async {
    emit(state.copyWith(isLoadingAccount: true));
    final res = await _accountService.getAccount();
    res.fold(
        (left) => emit(state.copyWith(isLoadingAccount: false, failure: left)),
        (right) {
      List<AccountEntity> accounts = [];
      right.forEach((e) => accounts.add(AccountEntity.fromJson(e)));
      emit(
        state.copyWith(
          isLoadingAccount: false,
          accounts: accounts,
        ),
      );
    });
  }

  void _onLoadTransaction() async {
    page = 1;
    emit(state.copyWith(isLoading: true));
    final res = await _accountService.getTransaction(page: page);
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

  void onReloadTransaction() async {
    page = 1;
    emit(state.copyWith(isLoading: false));
    final res = await _accountService.getTransaction(page: page);
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

  void onLoadMoreTransaction() async {
    page++;

    final res = await _accountService.getTransaction(page: page);
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
}
