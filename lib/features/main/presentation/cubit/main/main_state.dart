part of 'main_cubit.dart';

@freezed
class MainState with _$MainState {
  const MainState._();

  const factory MainState({
    @Default(0) int currentIndex,
  }) = _MainState;
}
