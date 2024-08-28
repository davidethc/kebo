// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgetPasswordState {
  String get username => throw _privateConstructorUsedError;
  AppInputErrorRequired? get errorUsername =>
      throw _privateConstructorUsedError;
  bool get focusStatusUsername => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  AppInputErrorPassword? get errorPassword =>
      throw _privateConstructorUsedError;
  AppInputErrorConfirmPassword? get errorConfirmPassword =>
      throw _privateConstructorUsedError;
  bool get passwordVisibilityStatus => throw _privateConstructorUsedError;
  bool get confirmPasswordVisibilityStatus =>
      throw _privateConstructorUsedError;
  bool get focusStatusPassword => throw _privateConstructorUsedError;
  bool get focusStatusConfirmPassword => throw _privateConstructorUsedError;
  AppFailure? get authFailure => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get isBack => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  PhoneNumber? get phoneNumber => throw _privateConstructorUsedError;
  bool get isPhone => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgetPasswordStateCopyWith<ForgetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordStateCopyWith<$Res> {
  factory $ForgetPasswordStateCopyWith(
          ForgetPasswordState value, $Res Function(ForgetPasswordState) then) =
      _$ForgetPasswordStateCopyWithImpl<$Res, ForgetPasswordState>;
  @useResult
  $Res call(
      {String username,
      AppInputErrorRequired? errorUsername,
      bool focusStatusUsername,
      String password,
      String confirmPassword,
      AppInputErrorPassword? errorPassword,
      AppInputErrorConfirmPassword? errorConfirmPassword,
      bool passwordVisibilityStatus,
      bool confirmPasswordVisibilityStatus,
      bool focusStatusPassword,
      bool focusStatusConfirmPassword,
      AppFailure? authFailure,
      String otp,
      bool isLoading,
      bool isDone,
      bool isBack,
      int currentPage,
      PhoneNumber? phoneNumber,
      bool isPhone,
      String countryCode});

  $AppFailureCopyWith<$Res>? get authFailure;
}

/// @nodoc
class _$ForgetPasswordStateCopyWithImpl<$Res, $Val extends ForgetPasswordState>
    implements $ForgetPasswordStateCopyWith<$Res> {
  _$ForgetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? errorUsername = freezed,
    Object? focusStatusUsername = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? errorPassword = freezed,
    Object? errorConfirmPassword = freezed,
    Object? passwordVisibilityStatus = null,
    Object? confirmPasswordVisibilityStatus = null,
    Object? focusStatusPassword = null,
    Object? focusStatusConfirmPassword = null,
    Object? authFailure = freezed,
    Object? otp = null,
    Object? isLoading = null,
    Object? isDone = null,
    Object? isBack = null,
    Object? currentPage = null,
    Object? phoneNumber = freezed,
    Object? isPhone = null,
    Object? countryCode = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      errorUsername: freezed == errorUsername
          ? _value.errorUsername
          : errorUsername // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      focusStatusUsername: null == focusStatusUsername
          ? _value.focusStatusUsername
          : focusStatusUsername // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      errorPassword: freezed == errorPassword
          ? _value.errorPassword
          : errorPassword // ignore: cast_nullable_to_non_nullable
              as AppInputErrorPassword?,
      errorConfirmPassword: freezed == errorConfirmPassword
          ? _value.errorConfirmPassword
          : errorConfirmPassword // ignore: cast_nullable_to_non_nullable
              as AppInputErrorConfirmPassword?,
      passwordVisibilityStatus: null == passwordVisibilityStatus
          ? _value.passwordVisibilityStatus
          : passwordVisibilityStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmPasswordVisibilityStatus: null == confirmPasswordVisibilityStatus
          ? _value.confirmPasswordVisibilityStatus
          : confirmPasswordVisibilityStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusPassword: null == focusStatusPassword
          ? _value.focusStatusPassword
          : focusStatusPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusConfirmPassword: null == focusStatusConfirmPassword
          ? _value.focusStatusConfirmPassword
          : focusStatusConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailure: freezed == authFailure
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isBack: null == isBack
          ? _value.isBack
          : isBack // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      isPhone: null == isPhone
          ? _value.isPhone
          : isPhone // ignore: cast_nullable_to_non_nullable
              as bool,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppFailureCopyWith<$Res>? get authFailure {
    if (_value.authFailure == null) {
      return null;
    }

    return $AppFailureCopyWith<$Res>(_value.authFailure!, (value) {
      return _then(_value.copyWith(authFailure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForgetPasswordStateImplCopyWith<$Res>
    implements $ForgetPasswordStateCopyWith<$Res> {
  factory _$$ForgetPasswordStateImplCopyWith(_$ForgetPasswordStateImpl value,
          $Res Function(_$ForgetPasswordStateImpl) then) =
      __$$ForgetPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      AppInputErrorRequired? errorUsername,
      bool focusStatusUsername,
      String password,
      String confirmPassword,
      AppInputErrorPassword? errorPassword,
      AppInputErrorConfirmPassword? errorConfirmPassword,
      bool passwordVisibilityStatus,
      bool confirmPasswordVisibilityStatus,
      bool focusStatusPassword,
      bool focusStatusConfirmPassword,
      AppFailure? authFailure,
      String otp,
      bool isLoading,
      bool isDone,
      bool isBack,
      int currentPage,
      PhoneNumber? phoneNumber,
      bool isPhone,
      String countryCode});

  @override
  $AppFailureCopyWith<$Res>? get authFailure;
}

/// @nodoc
class __$$ForgetPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res, _$ForgetPasswordStateImpl>
    implements _$$ForgetPasswordStateImplCopyWith<$Res> {
  __$$ForgetPasswordStateImplCopyWithImpl(_$ForgetPasswordStateImpl _value,
      $Res Function(_$ForgetPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? errorUsername = freezed,
    Object? focusStatusUsername = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? errorPassword = freezed,
    Object? errorConfirmPassword = freezed,
    Object? passwordVisibilityStatus = null,
    Object? confirmPasswordVisibilityStatus = null,
    Object? focusStatusPassword = null,
    Object? focusStatusConfirmPassword = null,
    Object? authFailure = freezed,
    Object? otp = null,
    Object? isLoading = null,
    Object? isDone = null,
    Object? isBack = null,
    Object? currentPage = null,
    Object? phoneNumber = freezed,
    Object? isPhone = null,
    Object? countryCode = null,
  }) {
    return _then(_$ForgetPasswordStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      errorUsername: freezed == errorUsername
          ? _value.errorUsername
          : errorUsername // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      focusStatusUsername: null == focusStatusUsername
          ? _value.focusStatusUsername
          : focusStatusUsername // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      errorPassword: freezed == errorPassword
          ? _value.errorPassword
          : errorPassword // ignore: cast_nullable_to_non_nullable
              as AppInputErrorPassword?,
      errorConfirmPassword: freezed == errorConfirmPassword
          ? _value.errorConfirmPassword
          : errorConfirmPassword // ignore: cast_nullable_to_non_nullable
              as AppInputErrorConfirmPassword?,
      passwordVisibilityStatus: null == passwordVisibilityStatus
          ? _value.passwordVisibilityStatus
          : passwordVisibilityStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmPasswordVisibilityStatus: null == confirmPasswordVisibilityStatus
          ? _value.confirmPasswordVisibilityStatus
          : confirmPasswordVisibilityStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusPassword: null == focusStatusPassword
          ? _value.focusStatusPassword
          : focusStatusPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusConfirmPassword: null == focusStatusConfirmPassword
          ? _value.focusStatusConfirmPassword
          : focusStatusConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailure: freezed == authFailure
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isBack: null == isBack
          ? _value.isBack
          : isBack // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      isPhone: null == isPhone
          ? _value.isPhone
          : isPhone // ignore: cast_nullable_to_non_nullable
              as bool,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgetPasswordStateImpl extends _ForgetPasswordState {
  const _$ForgetPasswordStateImpl(
      {this.username = '',
      this.errorUsername,
      this.focusStatusUsername = false,
      this.password = '',
      this.confirmPassword = '',
      this.errorPassword,
      this.errorConfirmPassword,
      this.passwordVisibilityStatus = false,
      this.confirmPasswordVisibilityStatus = false,
      this.focusStatusPassword = false,
      this.focusStatusConfirmPassword = false,
      this.authFailure,
      this.otp = '',
      this.isLoading = false,
      this.isDone = false,
      this.isBack = false,
      this.currentPage = 0,
      this.phoneNumber,
      this.isPhone = false,
      this.countryCode = '+57'})
      : super._();

  @override
  @JsonKey()
  final String username;
  @override
  final AppInputErrorRequired? errorUsername;
  @override
  @JsonKey()
  final bool focusStatusUsername;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  final AppInputErrorPassword? errorPassword;
  @override
  final AppInputErrorConfirmPassword? errorConfirmPassword;
  @override
  @JsonKey()
  final bool passwordVisibilityStatus;
  @override
  @JsonKey()
  final bool confirmPasswordVisibilityStatus;
  @override
  @JsonKey()
  final bool focusStatusPassword;
  @override
  @JsonKey()
  final bool focusStatusConfirmPassword;
  @override
  final AppFailure? authFailure;
  @override
  @JsonKey()
  final String otp;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isDone;
  @override
  @JsonKey()
  final bool isBack;
  @override
  @JsonKey()
  final int currentPage;
  @override
  final PhoneNumber? phoneNumber;
  @override
  @JsonKey()
  final bool isPhone;
  @override
  @JsonKey()
  final String countryCode;

  @override
  String toString() {
    return 'ForgetPasswordState(username: $username, errorUsername: $errorUsername, focusStatusUsername: $focusStatusUsername, password: $password, confirmPassword: $confirmPassword, errorPassword: $errorPassword, errorConfirmPassword: $errorConfirmPassword, passwordVisibilityStatus: $passwordVisibilityStatus, confirmPasswordVisibilityStatus: $confirmPasswordVisibilityStatus, focusStatusPassword: $focusStatusPassword, focusStatusConfirmPassword: $focusStatusConfirmPassword, authFailure: $authFailure, otp: $otp, isLoading: $isLoading, isDone: $isDone, isBack: $isBack, currentPage: $currentPage, phoneNumber: $phoneNumber, isPhone: $isPhone, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordStateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.errorUsername, errorUsername) ||
                other.errorUsername == errorUsername) &&
            (identical(other.focusStatusUsername, focusStatusUsername) ||
                other.focusStatusUsername == focusStatusUsername) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.errorPassword, errorPassword) ||
                other.errorPassword == errorPassword) &&
            (identical(other.errorConfirmPassword, errorConfirmPassword) ||
                other.errorConfirmPassword == errorConfirmPassword) &&
            (identical(
                    other.passwordVisibilityStatus, passwordVisibilityStatus) ||
                other.passwordVisibilityStatus == passwordVisibilityStatus) &&
            (identical(other.confirmPasswordVisibilityStatus,
                    confirmPasswordVisibilityStatus) ||
                other.confirmPasswordVisibilityStatus ==
                    confirmPasswordVisibilityStatus) &&
            (identical(other.focusStatusPassword, focusStatusPassword) ||
                other.focusStatusPassword == focusStatusPassword) &&
            (identical(other.focusStatusConfirmPassword,
                    focusStatusConfirmPassword) ||
                other.focusStatusConfirmPassword ==
                    focusStatusConfirmPassword) &&
            (identical(other.authFailure, authFailure) ||
                other.authFailure == authFailure) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.isBack, isBack) || other.isBack == isBack) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isPhone, isPhone) || other.isPhone == isPhone) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        username,
        errorUsername,
        focusStatusUsername,
        password,
        confirmPassword,
        errorPassword,
        errorConfirmPassword,
        passwordVisibilityStatus,
        confirmPasswordVisibilityStatus,
        focusStatusPassword,
        focusStatusConfirmPassword,
        authFailure,
        otp,
        isLoading,
        isDone,
        isBack,
        currentPage,
        phoneNumber,
        isPhone,
        countryCode
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordStateImplCopyWith<_$ForgetPasswordStateImpl> get copyWith =>
      __$$ForgetPasswordStateImplCopyWithImpl<_$ForgetPasswordStateImpl>(
          this, _$identity);
}

abstract class _ForgetPasswordState extends ForgetPasswordState {
  const factory _ForgetPasswordState(
      {final String username,
      final AppInputErrorRequired? errorUsername,
      final bool focusStatusUsername,
      final String password,
      final String confirmPassword,
      final AppInputErrorPassword? errorPassword,
      final AppInputErrorConfirmPassword? errorConfirmPassword,
      final bool passwordVisibilityStatus,
      final bool confirmPasswordVisibilityStatus,
      final bool focusStatusPassword,
      final bool focusStatusConfirmPassword,
      final AppFailure? authFailure,
      final String otp,
      final bool isLoading,
      final bool isDone,
      final bool isBack,
      final int currentPage,
      final PhoneNumber? phoneNumber,
      final bool isPhone,
      final String countryCode}) = _$ForgetPasswordStateImpl;
  const _ForgetPasswordState._() : super._();

  @override
  String get username;
  @override
  AppInputErrorRequired? get errorUsername;
  @override
  bool get focusStatusUsername;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  AppInputErrorPassword? get errorPassword;
  @override
  AppInputErrorConfirmPassword? get errorConfirmPassword;
  @override
  bool get passwordVisibilityStatus;
  @override
  bool get confirmPasswordVisibilityStatus;
  @override
  bool get focusStatusPassword;
  @override
  bool get focusStatusConfirmPassword;
  @override
  AppFailure? get authFailure;
  @override
  String get otp;
  @override
  bool get isLoading;
  @override
  bool get isDone;
  @override
  bool get isBack;
  @override
  int get currentPage;
  @override
  PhoneNumber? get phoneNumber;
  @override
  bool get isPhone;
  @override
  String get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$ForgetPasswordStateImplCopyWith<_$ForgetPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
