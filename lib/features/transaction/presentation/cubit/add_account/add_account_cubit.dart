import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/account_entity/account_entity/account_entity.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import '../../../../../core/data/errors/app_failure.dart';
import '../../../../../core/data/errors/app_input_errors.dart';
import '../../../../../core/utils/validators/app_validators.dart';

part 'add_account_state.dart';
part 'add_account_cubit.freezed.dart';

@Injectable()
class AddAccountCubit extends Cubit<AddAccountState> {
  final AccountService _accountService;
  AddAccountCubit(this._accountService) : super(const AddAccountState());

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void onChangedName(String name) {
    emit(state.copyWith(
      name: name,
      errorName: AppInputValidatorRequired.dirty(name).error,
    ));
  }

  void onChangedBalance(String balance) {
    emit(state.copyWith(
      balance: balance,
      errorBalance: AppInputValidatorRequired.dirty(balance).error,
    ));
  }

  void onChangedDescription(String description) {
    emit(state.copyWith(
      description: description,
      errorDescription: AppInputValidatorRequired.dirty(description).error,
    ));
  }

  void onFocusChangedName(bool focused) {
    emit(state.copyWith(
      focusStatusName: focused,
      errorName:
          focused ? AppInputValidatorRequired.dirty(state.name).error : null,
    ));
  }

  void onFocusChangedBalance(bool focused) {
    emit(state.copyWith(
      focusStatusBalance: focused,
      errorBalance:
          focused ? AppInputValidatorRequired.dirty(state.balance).error : null,
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

  Future<void> onSubmit() async {
    emit(state.copyWith(
      errorName: AppInputValidatorRequired.dirty(state.name).error,
      errorDescription:
          AppInputValidatorRequired.dirty(state.description).error,
      errorBalance: AppInputValidatorRequired.dirty(state.balance).error,
    ));
    if (state.errorName != null ||
        state.errorDescription != null ||
        state.errorBalance != null) {
      return;
    }
    emit(state.copyWith(isLoading: true));
    final result = await _accountService.addManualAccount(
        name: state.name,
        description: state.description,
        balance: state.balance.replaceAll(',', ''));
    result.fold(
      (l) => emit(state.copyWith(failure: l, isLoading: false)),
      (r) async {
        final res = await _accountService.getAccount();
        res.fold(
          (left) => emit(state.copyWith(failure: left, isLoading: false)),
          (right) {
            List<AccountEntity> accounts = [];
            right.forEach((e) => accounts.add(AccountEntity.fromJson(e)));
            emit(
              state.copyWith(
                isDone: true,
                isLoading: false,
                failure: AppFailure.success(msg: S.current.addAccountSuccess),
                id: accounts.last.id,
              ),
            );
            emit(state.copyWith(isDone: false));
          },
        );
      },
    );
  }
}
