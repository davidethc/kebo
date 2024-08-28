import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/analytic_entity/analytic_entity.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import '../../../../../core/data/errors/app_failure.dart';

part 'analytic_state.dart';
part 'analytic_cubit.freezed.dart';

@Injectable()
class AnalyticCubit extends Cubit<AnalyticState> {
  final AccountService _accountService;
  AnalyticCubit(
    this._accountService,
  ) : super(const AnalyticState());

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void initial() async {
    _onLoadAnalytic();
    _onLoadSuggestion();
  }

  void _onLoadAnalytic() async {
    emit(state.copyWith(isLoading: true));
    final res = await _accountService.getAnalytic();
    res.fold((left) => emit(state.copyWith(isLoading: false, failure: left)),
        (right) {
      List<AnalyticEntity> analytics = [];
      right.forEach((e) => analytics.add(AnalyticEntity.fromJson(e)));
      emit(
        state.copyWith(
          analytics: analytics,
          isLoading: false,
        ),
      );
    });
  }

  void _onLoadSuggestion() async {
    emit(state.copyWith(isLoadingSuggest: true));
    final res = await _accountService.getSuggestion();
    res.fold(
        (left) => emit(state.copyWith(isLoadingSuggest: false, failure: left)),
        (right) {
      List<AnalyticEntity> suggestions = [];
      right.forEach((e) => suggestions.add(AnalyticEntity.fromJson(e)));
      emit(
        state.copyWith(
          suggestions: suggestions,
          isLoadingSuggest: false,
        ),
      );
    });
  }
}
