import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/transaction_entity/transaction_entity.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import '../../../../../core/data/errors/app_failure.dart';

part 'all_transaction_state.dart';
part 'all_transaction_cubit.freezed.dart';

@Injectable()
class AllTransactionCubit extends Cubit<AllTransactionState> {
  final AccountService _accountService;
  AllTransactionCubit(this._accountService)
      : super(const AllTransactionState());
  int page = 1;
  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void initial() async {
    _onLoadTransaction();
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

  void onLoadMoreTransaction() async {
    page++;
    emit(state.copyWith(isLoading: false));
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
