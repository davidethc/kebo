part of 'analytic_cubit.dart';

@freezed
class AnalyticState with _$AnalyticState {
  const AnalyticState._();

  const factory AnalyticState({
    AppFailure? failure,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingSuggest,
    @Default([]) List<AnalyticEntity> analytics,
    @Default([]) List<AnalyticEntity> suggestions,
  }) = _AnalyticState;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
