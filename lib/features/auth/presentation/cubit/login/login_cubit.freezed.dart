// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  AppInputErrorRequired? get errorUsername =>
      throw _privateConstructorUsedError;
  AppInputErrorPassword? get errorPassword =>
      throw _privateConstructorUsedError;
  bool get focusStatusUsername => throw _privateConstructorUsedError;
  bool get focusStatusPassword => throw _privateConstructorUsedError;
  bool get passwordVisibilityStatus => throw _privateConstructorUsedError;
  AppFailure? get authFailure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get navigateToSplash => throw _privateConstructorUsedError;
  bool get navigateToRegistration => throw _privateConstructorUsedError;
  bool get navigateToForget => throw _privateConstructorUsedError;
  bool get hasBiometrics => throw _privateConstructorUsedError;
  bool get hasFaceID => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  bool get isPhone => throw _privateConstructorUsedError;
  PhoneNumber? get phoneNumber => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {String username,
      String password,
      AppInputErrorRequired? errorUsername,
      AppInputErrorPassword? errorPassword,
      bool focusStatusUsername,
      bool focusStatusPassword,
      bool passwordVisibilityStatus,
      AppFailure? authFailure,
      bool isLoading,
      bool navigateToSplash,
      bool navigateToRegistration,
      bool navigateToForget,
      bool hasBiometrics,
      bool hasFaceID,
      bool isProcessing,
      bool isPhone,
      PhoneNumber? phoneNumber,
      String countryCode});

  $AppFailureCopyWith<$Res>? get authFailure;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? errorUsername = freezed,
    Object? errorPassword = freezed,
    Object? focusStatusUsername = null,
    Object? focusStatusPassword = null,
    Object? passwordVisibilityStatus = null,
    Object? authFailure = freezed,
    Object? isLoading = null,
    Object? navigateToSplash = null,
    Object? navigateToRegistration = null,
    Object? navigateToForget = null,
    Object? hasBiometrics = null,
    Object? hasFaceID = null,
    Object? isProcessing = null,
    Object? isPhone = null,
    Object? phoneNumber = freezed,
    Object? countryCode = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorUsername: freezed == errorUsername
          ? _value.errorUsername
          : errorUsername // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorPassword: freezed == errorPassword
          ? _value.errorPassword
          : errorPassword // ignore: cast_nullable_to_non_nullable
              as AppInputErrorPassword?,
      focusStatusUsername: null == focusStatusUsername
          ? _value.focusStatusUsername
          : focusStatusUsername // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusPassword: null == focusStatusPassword
          ? _value.focusStatusPassword
          : focusStatusPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordVisibilityStatus: null == passwordVisibilityStatus
          ? _value.passwordVisibilityStatus
          : passwordVisibilityStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailure: freezed == authFailure
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToSplash: null == navigateToSplash
          ? _value.navigateToSplash
          : navigateToSplash // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToRegistration: null == navigateToRegistration
          ? _value.navigateToRegistration
          : navigateToRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToForget: null == navigateToForget
          ? _value.navigateToForget
          : navigateToForget // ignore: cast_nullable_to_non_nullable
              as bool,
      hasBiometrics: null == hasBiometrics
          ? _value.hasBiometrics
          : hasBiometrics // ignore: cast_nullable_to_non_nullable
              as bool,
      hasFaceID: null == hasFaceID
          ? _value.hasFaceID
          : hasFaceID // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhone: null == isPhone
          ? _value.isPhone
          : isPhone // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
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
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String password,
      AppInputErrorRequired? errorUsername,
      AppInputErrorPassword? errorPassword,
      bool focusStatusUsername,
      bool focusStatusPassword,
      bool passwordVisibilityStatus,
      AppFailure? authFailure,
      bool isLoading,
      bool navigateToSplash,
      bool navigateToRegistration,
      bool navigateToForget,
      bool hasBiometrics,
      bool hasFaceID,
      bool isProcessing,
      bool isPhone,
      PhoneNumber? phoneNumber,
      String countryCode});

  @override
  $AppFailureCopyWith<$Res>? get authFailure;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? errorUsername = freezed,
    Object? errorPassword = freezed,
    Object? focusStatusUsername = null,
    Object? focusStatusPassword = null,
    Object? passwordVisibilityStatus = null,
    Object? authFailure = freezed,
    Object? isLoading = null,
    Object? navigateToSplash = null,
    Object? navigateToRegistration = null,
    Object? navigateToForget = null,
    Object? hasBiometrics = null,
    Object? hasFaceID = null,
    Object? isProcessing = null,
    Object? isPhone = null,
    Object? phoneNumber = freezed,
    Object? countryCode = null,
  }) {
    return _then(_$LoginStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorUsername: freezed == errorUsername
          ? _value.errorUsername
          : errorUsername // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorPassword: freezed == errorPassword
          ? _value.errorPassword
          : errorPassword // ignore: cast_nullable_to_non_nullable
              as AppInputErrorPassword?,
      focusStatusUsername: null == focusStatusUsername
          ? _value.focusStatusUsername
          : focusStatusUsername // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusPassword: null == focusStatusPassword
          ? _value.focusStatusPassword
          : focusStatusPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordVisibilityStatus: null == passwordVisibilityStatus
          ? _value.passwordVisibilityStatus
          : passwordVisibilityStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailure: freezed == authFailure
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToSplash: null == navigateToSplash
          ? _value.navigateToSplash
          : navigateToSplash // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToRegistration: null == navigateToRegistration
          ? _value.navigateToRegistration
          : navigateToRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToForget: null == navigateToForget
          ? _value.navigateToForget
          : navigateToForget // ignore: cast_nullable_to_non_nullable
              as bool,
      hasBiometrics: null == hasBiometrics
          ? _value.hasBiometrics
          : hasBiometrics // ignore: cast_nullable_to_non_nullable
              as bool,
      hasFaceID: null == hasFaceID
          ? _value.hasFaceID
          : hasFaceID // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhone: null == isPhone
          ? _value.isPhone
          : isPhone // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl extends _LoginState {
  const _$LoginStateImpl(
      {this.username = '',
      this.password = '',
      this.errorUsername,
      this.errorPassword,
      this.focusStatusUsername = false,
      this.focusStatusPassword = false,
      this.passwordVisibilityStatus = false,
      this.authFailure,
      this.isLoading = false,
      this.navigateToSplash = false,
      this.navigateToRegistration = false,
      this.navigateToForget = false,
      this.hasBiometrics = false,
      this.hasFaceID = false,
      this.isProcessing = false,
      this.isPhone = false,
      this.phoneNumber,
      this.countryCode = '+57'})
      : super._();

  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String password;
  @override
  final AppInputErrorRequired? errorUsername;
  @override
  final AppInputErrorPassword? errorPassword;
  @override
  @JsonKey()
  final bool focusStatusUsername;
  @override
  @JsonKey()
  final bool focusStatusPassword;
  @override
  @JsonKey()
  final bool passwordVisibilityStatus;
  @override
  final AppFailure? authFailure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool navigateToSplash;
  @override
  @JsonKey()
  final bool navigateToRegistration;
  @override
  @JsonKey()
  final bool navigateToForget;
  @override
  @JsonKey()
  final bool hasBiometrics;
  @override
  @JsonKey()
  final bool hasFaceID;
  @override
  @JsonKey()
  final bool isProcessing;
  @override
  @JsonKey()
  final bool isPhone;
  @override
  final PhoneNumber? phoneNumber;
  @override
  @JsonKey()
  final String countryCode;

  @override
  String toString() {
    return 'LoginState(username: $username, password: $password, errorUsername: $errorUsername, errorPassword: $errorPassword, focusStatusUsername: $focusStatusUsername, focusStatusPassword: $focusStatusPassword, passwordVisibilityStatus: $passwordVisibilityStatus, authFailure: $authFailure, isLoading: $isLoading, navigateToSplash: $navigateToSplash, navigateToRegistration: $navigateToRegistration, navigateToForget: $navigateToForget, hasBiometrics: $hasBiometrics, hasFaceID: $hasFaceID, isProcessing: $isProcessing, isPhone: $isPhone, phoneNumber: $phoneNumber, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.errorUsername, errorUsername) ||
                other.errorUsername == errorUsername) &&
            (identical(other.errorPassword, errorPassword) ||
                other.errorPassword == errorPassword) &&
            (identical(other.focusStatusUsername, focusStatusUsername) ||
                other.focusStatusUsername == focusStatusUsername) &&
            (identical(other.focusStatusPassword, focusStatusPassword) ||
                other.focusStatusPassword == focusStatusPassword) &&
            (identical(
                    other.passwordVisibilityStatus, passwordVisibilityStatus) ||
                other.passwordVisibilityStatus == passwordVisibilityStatus) &&
            (identical(other.authFailure, authFailure) ||
                other.authFailure == authFailure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.navigateToSplash, navigateToSplash) ||
                other.navigateToSplash == navigateToSplash) &&
            (identical(other.navigateToRegistration, navigateToRegistration) ||
                other.navigateToRegistration == navigateToRegistration) &&
            (identical(other.navigateToForget, navigateToForget) ||
                other.navigateToForget == navigateToForget) &&
            (identical(other.hasBiometrics, hasBiometrics) ||
                other.hasBiometrics == hasBiometrics) &&
            (identical(other.hasFaceID, hasFaceID) ||
                other.hasFaceID == hasFaceID) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.isPhone, isPhone) || other.isPhone == isPhone) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      password,
      errorUsername,
      errorPassword,
      focusStatusUsername,
      focusStatusPassword,
      passwordVisibilityStatus,
      authFailure,
      isLoading,
      navigateToSplash,
      navigateToRegistration,
      navigateToForget,
      hasBiometrics,
      hasFaceID,
      isProcessing,
      isPhone,
      phoneNumber,
      countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  const factory _LoginState(
      {final String username,
      final String password,
      final AppInputErrorRequired? errorUsername,
      final AppInputErrorPassword? errorPassword,
      final bool focusStatusUsername,
      final bool focusStatusPassword,
      final bool passwordVisibilityStatus,
      final AppFailure? authFailure,
      final bool isLoading,
      final bool navigateToSplash,
      final bool navigateToRegistration,
      final bool navigateToForget,
      final bool hasBiometrics,
      final bool hasFaceID,
      final bool isProcessing,
      final bool isPhone,
      final PhoneNumber? phoneNumber,
      final String countryCode}) = _$LoginStateImpl;
  const _LoginState._() : super._();

  @override
  String get username;
  @override
  String get password;
  @override
  AppInputErrorRequired? get errorUsername;
  @override
  AppInputErrorPassword? get errorPassword;
  @override
  bool get focusStatusUsername;
  @override
  bool get focusStatusPassword;
  @override
  bool get passwordVisibilityStatus;
  @override
  AppFailure? get authFailure;
  @override
  bool get isLoading;
  @override
  bool get navigateToSplash;
  @override
  bool get navigateToRegistration;
  @override
  bool get navigateToForget;
  @override
  bool get hasBiometrics;
  @override
  bool get hasFaceID;
  @override
  bool get isProcessing;
  @override
  bool get isPhone;
  @override
  PhoneNumber? get phoneNumber;
  @override
  String get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
