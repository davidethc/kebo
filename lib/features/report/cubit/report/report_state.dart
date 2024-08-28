part of 'report_cubit.dart';

@freezed
class ReportState with _$ReportState {
  const ReportState._();

  const factory ReportState({
    AppFailure? failure,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingBar,
    @Default(false) bool isLoadingIncome,
    @Default([]) List<List<dynamic>> dataBar,
    @Default([]) List<List<dynamic>> dataLine,
    @Default([]) List<List<dynamic>> dataIncome,
  }) = _ReportState;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
