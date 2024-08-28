import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/product_entity/product_entity.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import '../../../../../core/data/errors/app_failure.dart';

part 'select_product_state.dart';
part 'select_product_cubit.freezed.dart';

@Injectable()
class SelectProductCubit extends Cubit<SelectProductState> {
  final AccountService _accountService;
  SelectProductCubit(this._accountService) : super(const SelectProductState());

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void initial({
    required String institution,
  }) async {
    emit(state.copyWith(isLoading: true));
    final res =
        await _accountService.getAviableAccount(institution: institution);
    res.fold(
      (left) => emit(state.copyWith(isLoading: false, failure: left)),
      (right) {
        List data = right;
        List<ProductEntity> accounts = [];
        List<int> selected = [];
        for (int i = 0; i < data.length; i++) {
          final product = ProductEntity.fromJson(data[i]);
          if (product.synchronized) {
            selected.add(i);
          }
          accounts.add(product);
        }
        emit(state.copyWith(
            isLoading: false, accounts: accounts, selected: selected));
      },
    );
  }

  void onSelected(int index) {
    final check = state.selected.indexWhere((element) => element == index);
    if (check == -1) {
      emit(state.copyWith(selected: [...state.selected, index]));
    } else {
      List<int> selected = state.selected.toList();
      selected.removeAt(check);
      emit(state.copyWith(selected: selected));
    }
  }

  Future<void> onSubmit() async {
    emit(state.copyWith(isProcessing: true));
    final ids = state.selected.map((e) => state.accounts[e].id).toList();
    final result = await _accountService.registerAccount(
        link: state.accounts[state.selected.first].link, ids: ids);
    result.fold(
      (l) => emit(state.copyWith(failure: l, isProcessing: false)),
      (r) => emit(state.copyWith(isDone: true, isProcessing: false)),
    );
  }
}
