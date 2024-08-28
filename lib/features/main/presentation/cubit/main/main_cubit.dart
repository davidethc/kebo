import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

@Injectable()
class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState());

  void onChangedTab(int index) => emit(state.copyWith(currentIndex: index));
}
