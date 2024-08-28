part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({
    AppFailure? failure,
    @Default(false) bool isLoading,
    @Default(0) double balance,
  }) = _ProfileState;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
