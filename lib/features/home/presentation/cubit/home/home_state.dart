part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    AppFailure? failure,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingEvent,
    @Default([]) List<EventEntity> events,
    @Default(0.0) double balance,
    @Default(0) int score,
    @Default(0) int currentIndex,
    @Default(Tuple2(0, 0)) Tuple2<int, int> savings,
    @Default(Tuple2(0, 0)) Tuple2<int, int> goals,
    DashboardLineEntity? dataIncome,
    DashboardLineEntity? dataExpense,
  }) = _HomeState;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
