import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:kebo_app/core/data/entities/user_entity/user_entity.dart';
import 'package:kebo_app/core/data/providers/user_provider.dart';
import 'package:kebo_app/core/data/services/account_service.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/navigation/route_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/local/connectivity_helper.dart';
import 'package:kebo_app/core/data/local/local_data.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

@Injectable()
class SplashCubit extends Cubit<SplashState> {
  final AccountService _accountService;
  final UserProvider _userProvider;
  SplashCubit(
    this._accountService,
    this._userProvider,
  ) : super(const SplashStateInitial());

  Future<void> setup(Locale currentLocale) async {
    FlutterNativeSplash.remove();
    emit(const SplashStateLoading());
    await ConnectivityHelper.instance.setup();
    bool noInternet =
        ConnectivityHelper.instance.connectionStatus == ConnectivityResult.none;
    if (noInternet) {
      final result = await rootNavigate(AppScreens.noInternet);
      if (result == null) {
        setup(currentLocale);
      }
    } else {
      bool seen = LocalDataHelper.instance.getSeen();
      bool isAuthenticated = LocalDataHelper.instance.getIsLogin();
      if (!seen) {
        emit(const SplashStateFirst());
      } else {
        if (isAuthenticated) {
          await _loadProfile();
          emit(const SplashStateAuthenticated());
        } else {
          emit(const SplashStateUnauthenticated());
        }
      }
    }
  }

  Future<void> _loadProfile() async {
    final res = await _accountService.getUserInfo();
    res.fold(
      (left) => emit(const SplashStateUnauthenticated()),
      (right) => _userProvider.setup(UserEntity.fromJson(right['result'])),
    );
  }
}
