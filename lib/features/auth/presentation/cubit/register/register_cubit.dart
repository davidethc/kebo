import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/enums/age_enum.dart';
import 'package:kebo_app/core/data/enums/gender_enum.dart';
import 'package:kebo_app/core/data/services/auth_service.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../../../../../core/data/errors/app_failure.dart';
import '../../../../../core/data/errors/app_input_errors.dart';
import '../../../../../core/utils/validators/app_validators.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

@Injectable()
class RegisterCubit extends Cubit<RegisterState> {
  final AuthService _authService;
  RegisterCubit(this._authService) : super(const RegisterState());
  final firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn =
      GoogleSignIn(scopes: ['profile', 'email', 'phone']);

  void onFlashBarDismissed() => emit(state.copyWith(authFailure: null));

  void onEnableBiometric() => emit(state.copyWith(currentPage: 8));

  void onSubmitOTP() async {
    emit(state.copyWith(isLoading: true));
    final result = await _authService.verifyAccount(
      username: state.username,
      otp: state.otp,
    );
    result.fold(
      (l) => emit(state.copyWith(
          authFailure: AppFailure.failure(msg: S.current.otpInvalid),
          isLoading: false)),
      (r) async {
        emit(state.copyWith(currentPage: 7, isLoading: false));
      },
    );
  }

  void onResentOTP() async {
    emit(state.copyWith(isLoading: true));
    final result = await _authService.resendOTP(username: state.username);
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

  void onChangedPhone(String phone) {
    emit(state.copyWith(
      phone: phone,
      errorPhone: AppInputValidatorPhone.dirty(phone).error,
    ));
  }

  void onFocusChangedPhone(bool focused) {
    emit(state.copyWith(
      focusStatusPhone: focused,
      errorPhone:
          focused ? AppInputValidatorPhone.dirty(state.phone).error : null,
    ));
  }

  Future<void> onSubmitPhone() async {
    emit(state.copyWith(
        errorPhone: AppInputValidatorPhone.dirty(state.phoneNumber).error));
    if (state.errorPhone != null) {
      return;
    }
    emit(state.copyWith(isLoading: true));
    if (state.type != null) {
      final result = await _authService.registerGoogle(
        idToken: state.idToken,
        email: state.email,
        gender: state.gender!.value(),
        name: state.firstName,
        familyName: state.lastName,
        phoneNumber: state.phoneNumber,
        birthdate: AgeEnum.values[state.selectedAge].date(),
        customAge: AgeEnum.values[state.selectedAge].value(),
        invitedFrom: state.invitedFrom,
      );
      result.fold(
        (l) => emit(state.copyWith(
            authFailure: const AppFailure.failure(
                msg: 'Phone or Email is already in use'),
            isLoading: false)),
        (r) async {
          LoggerUtils.d('right $r');
          if (r['statusCode'] == 400) {
            emit(
              state.copyWith(
                authFailure: AppFailure.failure(msg: r['message']),
                isLoading: false,
              ),
            );
            return;
          }
          emit(
            state.copyWith(
              isLoading: false,
              currentPage: 6,
              username: r['username'],
            ),
          );
        },
      );
    } else {
      final result = await _authService.register(
        email: state.email,
        password: state.password,
        gender: state.gender!.value(),
        name: state.firstName,
        familyName: state.lastName,
        phoneNumber: state.phoneNumber,
        birthdate: AgeEnum.values[state.selectedAge].date(),
        customAge: AgeEnum.values[state.selectedAge].value(),
        invitedFrom: state.invitedFrom,
      );
      result.fold(
        (l) => emit(state.copyWith(authFailure: l, isLoading: false)),
        (r) async {
          if (r['statusCode'] == 400) {
            emit(
              state.copyWith(
                  authFailure: AppFailure.failure(msg: r['msg']),
                  isLoading: false),
            );
            return;
          }
          emit(
            state.copyWith(
              currentPage: 6,
              username: r['username'],
              isLoading: false,
            ),
          );
        },
      );
    }
  }

  void onChangeCountryCode(String value) {
    emit(state.copyWith(countryCode: value));
  }

  void onChangedEmail(String email) {
    emit(state.copyWith(
      email: email,
      errorEmail: AppInputValidatorEmail.dirty(email).error,
    ));
  }

  void onFocusChangedEmail(bool focused) {
    emit(state.copyWith(
      focusStatusEmail: focused,
      errorEmail:
          focused ? AppInputValidatorEmail.dirty(state.email).error : null,
    ));
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

  void onSubmitPassword() {
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
    emit(state.copyWith(currentPage: 5));
  }

  void onChangedFirstName(String firstName) {
    emit(state.copyWith(
      firstName: firstName,
      errorFirstName: AppInputValidatorRequired.dirty(firstName).error,
    ));
  }

  void onFocusChangedFirstName(bool focused) {
    emit(state.copyWith(
      focusStatusFirstName: focused,
      errorFirstName: focused
          ? AppInputValidatorRequired.dirty(state.firstName).error
          : null,
    ));
  }

  void onChangedLastName(String lastName) {
    emit(state.copyWith(
      lastName: lastName,
      errorLastName: AppInputValidatorRequired.dirty(lastName).error,
    ));
  }

  void onFocusChangedLastName(bool focused) {
    emit(state.copyWith(
      focusStatusLastName: focused,
      errorLastName: focused
          ? AppInputValidatorRequired.dirty(state.lastName).error
          : null,
    ));
  }

  void onChangedAge(int index) async =>
      emit(state.copyWith(selectedAge: index));

  void onSubmitAge() {
    if (state.type == null) {
      emit(state.copyWith(currentPage: 4));
    } else {
      emit(state.copyWith(currentPage: 5));
    }
  }

  void onChangedGender(Gender value) => emit(state.copyWith(gender: value));

  void onSkipGender() {
    emit(state.copyWith(currentPage: 3, gender: Gender.female));
  }

  void onSubmitGender() {
    emit(state.copyWith(errorGender: state.gender == null));
    if (state.errorGender) {
      return;
    }
    emit(state.copyWith(currentPage: 3));
  }

  void onSubmitInfo() {
    emit(
      state.copyWith(
        errorFirstName: AppInputValidatorRequired.dirty(state.firstName).error,
        errorLastName: AppInputValidatorRequired.dirty(state.lastName).error,
      ),
    );
    if (state.errorFirstName != null || state.errorLastName != null) {
      return;
    }
    emit(state.copyWith(currentPage: 2));
  }

  Future<void> onSubmitEmail() async {
    emit(state.copyWith(
        errorEmail: AppInputValidatorEmail.dirty(state.email).error));
    if (state.errorEmail != null) {
      return;
    }
    emit(state.copyWith(currentPage: 1));
  }

  void onBack() {
    if (state.currentPage == 5 && state.type != null) {
      emit(state.copyWith(currentPage: 3));
      return;
    }
    if (state.currentPage == 1) {
      emit(state.copyWith(currentPage: 0, type: null));
      return;
    }
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

  Future<String> getIdToken(RegisterType type) async {
    String idToken = '';
    switch (type) {
      case RegisterType.apple:
        idToken = await signinApple();
        break;
      case RegisterType.google:
        idToken = await signinGoogle();
        break;
      default:
        return '';
    }

    return idToken;
  }

  void onRegisterSocial(RegisterType type) async {
    emit(state.copyWith(isLoading: true));
    String idToken = await getIdToken(type);
    if (idToken.isEmpty) {
      emit(state.copyWith(isLoading: false));
      return;
    }
    emit(
      state.copyWith(
        isLoading: false,
        idToken: idToken,
        currentPage: 1,
        type: type,
      ),
    );
  }

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
      GoogleSignInAccount? result = await _googleSignIn.signIn();
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
}
