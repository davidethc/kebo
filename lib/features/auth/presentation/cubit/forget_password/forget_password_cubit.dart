import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:kebo_app/core/data/services/auth_service.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import '../../../../../core/data/errors/app_failure.dart';
import '../../../../../core/data/errors/app_input_errors.dart';
import '../../../../../core/utils/validators/app_validators.dart';

part 'forget_password_state.dart';
part 'forget_password_cubit.freezed.dart';

@Injectable()
class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  final AuthService _authService;
  ForgetPasswordCubit(this._authService) : super(const ForgetPasswordState());
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController otpController = TextEditingController();

  void onFlashBarDismissed() => emit(state.copyWith(authFailure: null));

  void onSubmitOTP() async {
    emit(state.copyWith(isLoading: true, currentPage: 2));
    emit(state.copyWith(isLoading: false));
  }

  void onResentOTP() async {
    emit(state.copyWith(isLoading: true));
    String username = '';
    if (!state.isPhone) {
      username = state.username;
    } else {
      username = state.getPhoneNumber;
    }
    final result = await _authService.resendOTP(username: username);
    result.fold(
      (l) => emit(state.copyWith(authFailure: l, isLoading: false)),
      (r) => emit(
        state.copyWith(
          isLoading: false,
          authFailure: AppFailure.success(msg: S.current.sent),
        ),
      ),
    );
  }

  void onChangedOTP(String value) => emit(state.copyWith(otp: value));

  void onChangedUsername(String username) async {
    if (username.isEmpty) {
      emit(state.copyWith(isPhone: false));
      return;
    }
    if (username.length == 3) {
      String countryCode =
          WidgetsBinding.instance.platformDispatcher.locale.countryCode ?? 'CO';
      LoggerUtils.d('code $countryCode');
      double? number = double.tryParse(username);
      // PhoneNumber phoneNumber =
      //     await PhoneNumber.getRegionInfoFromPhoneNumber(username, countryCode);
      if (number != null) {
        usernameController.text = '${number.toInt()}';
        emit(
          state.copyWith(
            username: username,
            isPhone: true,
            //   phoneNumber: phoneNumber,
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

  void onFocusChangedUsername(bool focused) {
    emit(state.copyWith(
      focusStatusUsername: focused,
      errorUsername: focused
          ? AppInputValidatorRequired.dirty(state.username).error
          : null,
    ));
  }

  Future<void> onSubmitPhone() async {
    emit(
      state.copyWith(
        errorUsername: AppInputValidatorRequired.dirty(state.username).error,
      ),
    );
    if (state.errorUsername != null) {
      return;
    }
    emit(state.copyWith(isLoading: true));
    String username = '';
    if (!state.isPhone) {
      username = state.username;
    } else {
      username = state.getPhoneNumber;
    }
    final result = await _authService.forgetPassword(username: username);
    result.fold(
      (l) => emit(state.copyWith(authFailure: l, isLoading: false)),
      (r) async {
        emit(state.copyWith(currentPage: 1, isLoading: false));
      },
    );
  }

  void onChangeCountryCode(PhoneNumber number) {
    LoggerUtils.d('${number.isoCode}');
    emit(state.copyWith(countryCode: number.phoneNumber ?? ''));
  }

  void onChangedConfirmPassword(String confirmPassword) {
    emit(state.copyWith(
      confirmPassword: confirmPassword,
      errorConfirmPassword: AppInputValidatorConfirmPassword.dirty(
              '${state.password}||$confirmPassword')
          .error,
    ));
  }

  void onFocusChangedConfirmPassword(bool focused) {
    emit(state.copyWith(
      focusStatusConfirmPassword: focused,
      errorConfirmPassword: focused
          ? AppInputValidatorConfirmPassword.dirty(
                  '${state.password}||${state.confirmPassword}')
              .error
          : null,
    ));
  }

  void onToggleConfirmPasswordVisibility() => emit(state.copyWith(
      confirmPasswordVisibilityStatus: !state.confirmPasswordVisibilityStatus));

  void onChangedPassword(String password) {
    emit(state.copyWith(
      password: password,
      errorPassword: AppInputValidatorPassword.dirty(password).error,
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

  void onTogglePasswordVisibility() => emit(state.copyWith(
      passwordVisibilityStatus: !state.passwordVisibilityStatus));

  void onSubmitPassword() async {
    emit(
      state.copyWith(
        errorPassword: AppInputValidatorPassword.dirty(state.password).error,
        errorConfirmPassword: AppInputValidatorConfirmPassword.dirty(
                '${state.password}||${state.confirmPassword}')
            .error,
      ),
    );
    if (state.errorPassword != null || state.errorConfirmPassword != null) {
      return;
    }
    emit(state.copyWith(isLoading: true));
    String username = '';
    if (!state.isPhone) {
      username = state.username;
    } else {
      username = state.getPhoneNumber;
    }
    final result = await _authService.confirmForgetPassword(
      username: username,
      code: state.otp,
      password: state.password,
    );
    result.fold(
      (l) {
        otpController.clear();
        emit(
          state.copyWith(
            authFailure: AppFailure.failure(msg: S.current.otpInvalid),
            isLoading: false,
            currentPage: 1,
          ),
        );
      },
      (r) async {
        emit(state.copyWith(isDone: true, isLoading: false));
      },
    );
  }

  void onBack() {
    if (state.currentPage == 0) {
      emit(state.copyWith(isBack: true));
    } else {
      final newPage = state.currentPage - 1;
      emit(state.copyWith(currentPage: newPage));
    }
  }

  Future<void> onComplete() async {
    emit(state.copyWith(isDone: true));
  }
}
