import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:kebo_app/core/data/local/local_data.dart';
import 'package:kebo_app/core/data/services/auth_service.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/biometric.dart/auth_biometrics.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import 'package:local_auth/local_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../../../../../core/data/entities/entities.dart';
import '../../../../../core/data/errors/app_failure.dart';
import '../../../../../core/data/errors/app_input_errors.dart';
import '../../../../../core/utils/validators/app_validators.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@Injectable()
class LoginCubit extends Cubit<LoginState> {
  final AuthService _authService;
  LoginCubit(this._authService) : super(const LoginState());
  final LocalAuthentication auth = LocalAuthentication();
  final firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['profile', 'email']);
  final TextEditingController usernameController = TextEditingController();

  get passwordController => null;

  Future<String> signinApple() async {
    try {
      final AuthorizationCredentialAppleID result =
          await SignInWithApple.getAppleIDCredential(scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName
      ]);

      final oAuthProvider = OAuthProvider('apple.com');
      final oAuthCredential = oAuthProvider.credential(
          idToken: result.identityToken, accessToken: result.authorizationCode);
      final UserCredential userCredential =
          await firebaseAuth.signInWithCredential(oAuthCredential);
      final idToken = await userCredential.user?.getIdToken() ?? '';
      return idToken;
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          authFailure: AppFailure.failure(msg: S.current.commonError),
        ),
      );
      return '';
    }
  }

  Future<String> signinGoogle() async {
    try {
      GoogleSignInAccount? result =
          await _googleSignIn.signIn(); // This line fixes the crash
      if (result == null) {
        emit(
          state.copyWith(
            isLoading: false,
            authFailure: AppFailure.failure(msg: S.current.commonError),
          ),
        );
        return '';
      }
      final googleSignInAuthentication = await result?.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication?.accessToken,
        idToken: googleSignInAuthentication?.idToken,
      );
      final UserCredential userCredential =
          await firebaseAuth.signInWithCredential(credential);
      final idToken = await userCredential.user?.getIdToken() ?? '';
      return idToken;
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          authFailure: AppFailure.failure(msg: S.current.commonError),
        ),
      );
      return '';
    }
  }

  Future<String> getIdToken(LoginType type) async {
    String idToken = '';
    switch (type) {
      case LoginType.apple:
        idToken = await signinApple();
        break;
      case LoginType.google:
        idToken = await signinGoogle();
        break;
      default:
    }
    return idToken;
  }

  void onLoginSocial(LoginType type) async {
    emit(state.copyWith(isLoading: true));
    String idToken = await getIdToken(type);
    final result = await _authService.loginGoogle(idToken: idToken);
    result.fold(
      (l) => emit(state.copyWith(authFailure: l, isLoading: false)),
      (r) async {
        if (r['statusCode'] == 400) {
          emit(
            state.copyWith(
              authFailure: AppFailure.failure(msg: r['message']),
              isLoading: false,
            ),
          );
          return;
        }
        LoginResponseEntity responseEntity =
            LoginResponseEntity.fromJson(r['AuthenticationResult']);
        await LocalDataHelper.instance.setIsLogin(true);
        await LocalDataHelper.instance.setToken(responseEntity.accessToken);
        await LocalDataHelper.instance
            .setRefreshToken(responseEntity.refreshToken);
        emit(state.copyWith(navigateToSplash: true, isLoading: false));
      },
    );
  }

  void checkBiometrics() async {
    bool hasBiometrics = false;
    bool hasFaceID = false;
    final token = await LocalDataHelper.instance.getRefreshToken() ?? '';
    hasBiometrics = await AuthBiometrics.hasBiometrics() && token.isNotEmpty;
    if (Platform.isIOS) {
      hasFaceID = await AuthBiometrics.hasFaceID();
    }
    emit(state.copyWith(hasBiometrics: hasBiometrics, hasFaceID: hasFaceID));
  }

  void onBeforeNavigate() => emit(state.copyWith(
      navigateToSplash: false,
      navigateToForget: false,
      navigateToRegistration: false));

  void onFlashBarDismissed() => emit(state.copyWith(authFailure: null));

  void onTogglePasswordVisibility() => emit(state.copyWith(
      passwordVisibilityStatus: !state.passwordVisibilityStatus));

  void onForget() => emit(state.copyWith(navigateToForget: true));

  void onChangedUsername(String username) async {
    if (username.isEmpty) {
      emit(state.copyWith(isPhone: false));
      return;
    }
    if (username.length == 3) {
      String countryCode =
          WidgetsBinding.instance.platformDispatcher.locale.countryCode ?? 'CO';
      double? number = double.tryParse(username);
      // PhoneNumber phoneNumber =
      //     await PhoneNumber.getRegionInfoFromPhoneNumber(username, countryCode);
      if (number != null) {
        usernameController.text = '${number.toInt()}';
        emit(
          state.copyWith(
            username: username,
            isPhone: true,
            //  phoneNumber: phoneNumber,
          ),
        );
        return;
      }
    }
    emit(state.copyWith(
      username: username,
      isLoading: false,
      errorUsername: AppInputValidatorRequired.dirty(username).error,
    ));
  }

  void onChangedPassword(String password) {
    emit(state.copyWith(
      password: password,
      errorPassword: AppInputValidatorPassword.dirty(password).error,
    ));
  }

  void onFocusChangedUsername(bool focused) {
    emit(state.copyWith(
      focusStatusUsername: focused,
      errorUsername: focused
          ? AppInputValidatorRequired.dirty(state.username).error
          : null,
    ));
  }

  void onFocusChangedPassword(bool focused) {
    emit(state.copyWith(
      focusStatusPassword: focused,
      errorPassword: focused
          ? AppInputValidatorPassword.dirty(state.password).error
          : null,
    ));
  }

  Future<void> onLogin() async {
    emit(state.copyWith(
      errorUsername: AppInputValidatorRequired.dirty(state.username).error,
      errorPassword: AppInputValidatorPassword.dirty(state.password).error,
    ));
    if (state.errorUsername != null || state.errorPassword != null) {
      return;
    }
    emit(state.copyWith(isLoading: true));
    String username = '';
    if (!state.isPhone) {
      username = state.username;
    } else {
      username = state.getPhoneNumber;
    }
    final result =
        await _authService.login(username: username, password: state.password);
    result.fold(
      (l) => emit(state.copyWith(authFailure: l, isLoading: false)),
      (r) async {
        if (r['statusCode'] == 400) {
          emit(
            state.copyWith(
              authFailure: AppFailure.failure(msg: r['message']),
              isLoading: false,
            ),
          );
          return;
        }
        LoginResponseEntity responseEntity =
            LoginResponseEntity.fromJson(r['AuthenticationResult']);
        await LocalDataHelper.instance.setIsLogin(true);
        await LocalDataHelper.instance.setToken(responseEntity.accessToken);
        await LocalDataHelper.instance
            .setRefreshToken(responseEntity.refreshToken);
        emit(state.copyWith(navigateToSplash: true, isLoading: false));
      },
    );
  }

  void onChangeCountryCode(PhoneNumber number) {
    LoggerUtils.d('${number.isoCode}');
    emit(state.copyWith(countryCode: number.phoneNumber ?? ''));
  }

  Future<void> onLoginBiometric() async {
    bool canCheckBiometrics = await auth.canCheckBiometrics;
    if (canCheckBiometrics) {
      final authenticated = await AuthBiometrics.authenticate();
      if (authenticated) {
        final refreshToken =
            await LocalDataHelper.instance.getRefreshToken() ?? '';
        emit(state.copyWith(isLoading: true));
        final result =
            await _authService.refreshToken(refreshToken: refreshToken);
        result.fold(
          (l) => emit(state.copyWith(isLoading: false, authFailure: l)),
          (r) async {
            if (r['statusCode'] == 400) {
              emit(
                state.copyWith(
                  authFailure: AppFailure.failure(msg: r['message']),
                  isLoading: false,
                ),
              );
              return;
            }
            LoginResponseEntity responseEntity =
                LoginResponseEntity.fromJson(r['AuthenticationResult']);
            await LocalDataHelper.instance.setIsLogin(true);
            await LocalDataHelper.instance.setToken(responseEntity.accessToken);
            if (responseEntity.refreshToken.isNotEmpty) {
              await LocalDataHelper.instance
                  .setRefreshToken(responseEntity.refreshToken);
            }
            emit(state.copyWith(navigateToSplash: true, isLoading: false));
          },
        );
      }
    }
  }
}
