part of 'splash_cubit.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = SplashStateInitial;

  const factory SplashState.loading() = SplashStateLoading;

  const factory SplashState.first() = SplashStateFirst;

  const factory SplashState.authenticated() = SplashStateAuthenticated;

  const factory SplashState.unauthenticated() = SplashStateUnauthenticated;
}
