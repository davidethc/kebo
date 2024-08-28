import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/institution_entity/institution_entity.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import '../../../../../core/data/errors/app_failure.dart';

part 'list_account_state.dart';
part 'list_account_cubit.freezed.dart';

@Injectable()
class ListAccountCubit extends Cubit<ListAccountState> {
  final AccountService _accountService;
  ListAccountCubit(this._accountService) : super(const ListAccountState());

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void initial() async {
    emit(state.copyWith(isLoading: true));
    final res = await _accountService.getAllInstitutions();
    res.fold((left) => emit(state.copyWith(isLoading: false, failure: left)),
        (right) {
      List<InstitutionEntity> institutions = [];
      right.forEach((e) => institutions.add(InstitutionEntity.fromJson(e)));
      emit(
        state.copyWith(
          isLoading: false,
          institutions: institutions,
        ),
      );
    });
  }

  void onChangedSearch(String keyword) {
    List<InstitutionEntity> result = state.institutions
        .where((item) =>
            item.displayName.toLowerCase().contains(keyword.toLowerCase()))
        .toList();
    emit(state.copyWith(keyword: keyword, result: result));
  }
}
