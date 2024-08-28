import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:kebo_app/core/data/enums/tab_report_enum.dart';
import 'package:kebo_app/core/data/services/report_service.dart';
import '../../../../../core/data/errors/app_failure.dart';

part 'report_state.dart';
part 'report_cubit.freezed.dart';

@Injectable()
class ReportCubit extends Cubit<ReportState> {
  final ReportService _reportService;
  ReportCubit(this._reportService) : super(const ReportState());

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void initial() async {
    _onLoadLine();
    _onLoadBar();
    _onLoadIncome();
  }

  void _onLoadBar() async {
    emit(state.copyWith(isLoadingBar: true));
    final res = await _reportService.getDashboardBar();
    res.fold(
      (left) => emit(state.copyWith(isLoadingBar: false, failure: left)),
      (right) {
        List<List<dynamic>> data = [];
        right.forEach((e) => data.add(e));
        data.sort((a, b) => a[2].compareTo(b[2]));
        emit(state.copyWith(isLoadingBar: false, dataBar: data));
      },
    );
  }

  void _onLoadLine() async {
    emit(state.copyWith(isLoading: true));
    final res = await _reportService.getDashboardLine();
    res.fold(
      (left) => emit(state.copyWith(isLoading: false, failure: left)),
      (right) {
        List<List<dynamic>> data = [];
        right['chartData'].forEach((e) {
          List temp = [];
          temp.add(DateFormat('yyyy-MM-dd').parse(e[0]));
          temp.add(e[1] ?? 0);
          temp.add(e[2] ?? 0);
          data.add(temp);
        });
        emit(state.copyWith(isLoading: false, dataLine: data));
      },
    );
  }

  void _onLoadIncome() async {
    emit(state.copyWith(isLoadingIncome: true));
    final res = await _reportService.getDashboardIncome();
    res.fold(
      (left) => emit(state.copyWith(isLoadingIncome: false, failure: left)),
      (right) {
        List<List<dynamic>> data = [];
        right['chartData'].forEach((e) {
          List temp = [];
          temp.add(e['count'] ?? 0);
          temp.add(DateFormat('yyyy-MM-dd').parse(e['_id']));
          temp.add(e['amount'] ?? 0);
          temp.add(e['average'] ?? 0);
          data.add(temp);
        });
        emit(state.copyWith(isLoadingIncome: false, dataIncome: data));
      },
    );
  }
}
