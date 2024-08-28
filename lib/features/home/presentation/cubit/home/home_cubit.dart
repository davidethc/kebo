import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/dashboard_line_entity/dashboard_line_entity.dart';
import 'package:kebo_app/core/data/entities/event_category/event_category.dart';
import 'package:kebo_app/core/data/services/report_service.dart';
import 'package:tuple/tuple.dart';
import '../../../../../core/data/errors/app_failure.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@Injectable()
class HomeCubit extends Cubit<HomeState> {
  final ReportService _reportService;
  HomeCubit(this._reportService) : super(const HomeState());

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void initial() {
    _onLoadBalance();
    _onLoadTrendExpense();
    _onLoadTrendIncome();
    _onLoadScore();
    _onLoadSaving();
    _onLoadGoal();
    _onLoadEvent();
  }

  void _onLoadTrendIncome() async {
    emit(state.copyWith(isLoading: true));
    final res = await _reportService.getTrendIncome();
    res.fold(
      (left) => emit(state.copyWith(isLoading: false, failure: left)),
      (right) {
        final data = DashboardLineEntity.fromJson(right['data']);
        emit(state.copyWith(isLoading: false, dataIncome: data));
      },
    );
  }

  void _onLoadTrendExpense() async {
    emit(state.copyWith(isLoading: true));
    final res = await _reportService.getTrendExpense();
    res.fold(
      (left) => emit(state.copyWith(isLoading: false, failure: left)),
      (right) {
        final data = DashboardLineEntity.fromJson(right['data']);
        emit(state.copyWith(isLoading: false, dataExpense: data));
      },
    );
  }

  void onChangedPage(int index) => emit(state.copyWith(currentIndex: index));

  void _onLoadBalance() async {
    emit(state.copyWith(isLoading: true));
    final res = await _reportService.getBalance();
    res.fold(
      (left) => emit(state.copyWith(isLoading: false, failure: left)),
      (right) => emit(
        state.copyWith(
          isLoading: false,
          balance: right.first['balance'].toDouble(),
        ),
      ),
    );
  }

  void _onLoadScore() async {
    emit(state.copyWith(isLoading: true));
    final res = await _reportService.getScore();
    res.fold(
      (left) => emit(state.copyWith(isLoading: false, failure: left)),
      (right) => emit(
        state.copyWith(
          isLoading: false,
          score: right['score'],
        ),
      ),
    );
  }

  void _onLoadSaving() async {
    emit(state.copyWith(isLoading: true));
    final res = await _reportService.getSaving();
    res.fold(
      (left) => emit(state.copyWith(isLoading: false, failure: left)),
      (right) => emit(
        state.copyWith(
          isLoading: false,
          savings: Tuple2(right['target'], right['current']),
        ),
      ),
    );
  }

  Future<void> _onLoadGoal() async {
    emit(state.copyWith(isLoading: true));
    final res = await _reportService.getGoal();
    res.fold(
      (left) => emit(state.copyWith(isLoading: false, failure: left)),
      (right) => emit(
        state.copyWith(
          isLoading: false,
          goals: Tuple2(right['target'], right['current']),
        ),
      ),
    );
  }

  void _onLoadEvent() async {
    emit(state.copyWith(isLoadingEvent: true));
    final res = await _reportService.getEvent();
    res.fold(
      (left) => emit(state.copyWith(isLoadingEvent: false, failure: left)),
      (right) async {
        List<EventEntity> events = [];
        List<String> data = [];
        right['videos'].forEach((e) => data.add(e));
        for (int i = 0; i < data.length; i++) {
          dynamic res = await getDetail(data[i]);
          events.add(
            EventEntity(
              title: res['title'],
              url: data[i],
              description: res['author_name'],
              thumnail: getYoutubeThumbnail(data[i]) ?? '',
            ),
          );
        }
        emit(state.copyWith(isLoadingEvent: false, events: events));
      },
    );
  }

  Future<dynamic> getDetail(String url) async {
    String embedUrl = "https://www.youtube.com/oembed?url=$url&format=json";

    var res = await Dio().get(embedUrl);
    try {
      if (res.statusCode == 200) {
        return res.data;
      } else {
        return null;
      }
    } on FormatException {
      return null;
    }
  }

  String? getYoutubeThumbnail(String videoUrl) {
    final Uri? uri = Uri.tryParse(videoUrl);
    if (uri == null) {
      return null;
    }
    return 'https://img.youtube.com/vi/${uri.queryParameters['v']}/0.jpg';
  }
}
