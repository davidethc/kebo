// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connect_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectAccountState {
  int get selectedType => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  List<ValueEntity> get listType => throw _privateConstructorUsedError;
  String? get errorUsername => throw _privateConstructorUsedError;
  String? get errorPassword => throw _privateConstructorUsedError;
  String? get errorToken => throw _privateConstructorUsedError;
  bool get passwordVisibilityStatus => throw _privateConstructorUsedError;
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get focusStatusUsername => throw _privateConstructorUsedError;
  bool get focusStatusPassword => throw _privateConstructorUsedError;
  bool get focusStatusToken => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  bool get processing => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get errorUsernameType => throw _privateConstructorUsedError;
  InstitutionEntity? get institution => throw _privateConstructorUsedError;
  FormEntity? get usernameTypeForm => throw _privateConstructorUsedError;
  FormEntity? get usernameForm => throw _privateConstructorUsedError;
  FormEntity? get passwordForm => throw _privateConstructorUsedError;
  FormEntity? get tokenForm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectAccountStateCopyWith<ConnectAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectAccountStateCopyWith<$Res> {
  factory $ConnectAccountStateCopyWith(
          ConnectAccountState value, $Res Function(ConnectAccountState) then) =
      _$ConnectAccountStateCopyWithImpl<$Res, ConnectAccountState>;
  @useResult
  $Res call(
      {int selectedType,
      String username,
      String password,
      String token,
      List<ValueEntity> listType,
      String? errorUsername,
      String? errorPassword,
      String? errorToken,
      bool passwordVisibilityStatus,
      AppFailure? failure,
      bool focusStatusUsername,
      bool focusStatusPassword,
      bool focusStatusToken,
      bool isLoading,
      bool isProcessing,
      bool processing,
      bool isDone,
      bool errorUsernameType,
      InstitutionEntity? institution,
      FormEntity? usernameTypeForm,
      FormEntity? usernameForm,
      FormEntity? passwordForm,
      FormEntity? tokenForm});

  $AppFailureCopyWith<$Res>? get failure;
  $InstitutionEntityCopyWith<$Res>? get institution;
  $FormEntityCopyWith<$Res>? get usernameTypeForm;
  $FormEntityCopyWith<$Res>? get usernameForm;
  $FormEntityCopyWith<$Res>? get passwordForm;
  $FormEntityCopyWith<$Res>? get tokenForm;
}

/// @nodoc
class _$ConnectAccountStateCopyWithImpl<$Res, $Val extends ConnectAccountState>
    implements $ConnectAccountStateCopyWith<$Res> {
  _$ConnectAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedType = null,
    Object? username = null,
    Object? password = null,
    Object? token = null,
    Object? listType = null,
    Object? errorUsername = freezed,
    Object? errorPassword = freezed,
    Object? errorToken = freezed,
    Object? passwordVisibilityStatus = null,
    Object? failure = freezed,
    Object? focusStatusUsername = null,
    Object? focusStatusPassword = null,
    Object? focusStatusToken = null,
    Object? isLoading = null,
    Object? isProcessing = null,
    Object? processing = null,
    Object? isDone = null,
    Object? errorUsernameType = null,
    Object? institution = freezed,
    Object? usernameTypeForm = freezed,
    Object? usernameForm = freezed,
    Object? passwordForm = freezed,
    Object? tokenForm = freezed,
  }) {
    return _then(_value.copyWith(
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      listType: null == listType
          ? _value.listType
          : listType // ignore: cast_nullable_to_non_nullable
              as List<ValueEntity>,
      errorUsername: freezed == errorUsername
          ? _value.errorUsername
          : errorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      errorPassword: freezed == errorPassword
          ? _value.errorPassword
          : errorPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      errorToken: freezed == errorToken
          ? _value.errorToken
          : errorToken // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordVisibilityStatus: null == passwordVisibilityStatus
          ? _value.passwordVisibilityStatus
          : passwordVisibilityStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      focusStatusUsername: null == focusStatusUsername
          ? _value.focusStatusUsername
          : focusStatusUsername // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusPassword: null == focusStatusPassword
          ? _value.focusStatusPassword
          : focusStatusPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusToken: null == focusStatusToken
          ? _value.focusStatusToken
          : focusStatusToken // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      processing: null == processing
          ? _value.processing
          : processing // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUsernameType: null == errorUsernameType
          ? _value.errorUsernameType
          : errorUsernameType // ignore: cast_nullable_to_non_nullable
              as bool,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as InstitutionEntity?,
      usernameTypeForm: freezed == usernameTypeForm
          ? _value.usernameTypeForm
          : usernameTypeForm // ignore: cast_nullable_to_non_nullable
              as FormEntity?,
      usernameForm: freezed == usernameForm
          ? _value.usernameForm
          : usernameForm // ignore: cast_nullable_to_non_nullable
              as FormEntity?,
      passwordForm: freezed == passwordForm
          ? _value.passwordForm
          : passwordForm // ignore: cast_nullable_to_non_nullable
              as FormEntity?,
      tokenForm: freezed == tokenForm
          ? _value.tokenForm
          : tokenForm // ignore: cast_nullable_to_non_nullable
              as FormEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $AppFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InstitutionEntityCopyWith<$Res>? get institution {
    if (_value.institution == null) {
      return null;
    }

    return $InstitutionEntityCopyWith<$Res>(_value.institution!, (value) {
      return _then(_value.copyWith(institution: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FormEntityCopyWith<$Res>? get usernameTypeForm {
    if (_value.usernameTypeForm == null) {
      return null;
    }

    return $FormEntityCopyWith<$Res>(_value.usernameTypeForm!, (value) {
      return _then(_value.copyWith(usernameTypeForm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FormEntityCopyWith<$Res>? get usernameForm {
    if (_value.usernameForm == null) {
      return null;
    }

    return $FormEntityCopyWith<$Res>(_value.usernameForm!, (value) {
      return _then(_value.copyWith(usernameForm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FormEntityCopyWith<$Res>? get passwordForm {
    if (_value.passwordForm == null) {
      return null;
    }

    return $FormEntityCopyWith<$Res>(_value.passwordForm!, (value) {
      return _then(_value.copyWith(passwordForm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FormEntityCopyWith<$Res>? get tokenForm {
    if (_value.tokenForm == null) {
      return null;
    }

    return $FormEntityCopyWith<$Res>(_value.tokenForm!, (value) {
      return _then(_value.copyWith(tokenForm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConnectAccountStateImplCopyWith<$Res>
    implements $ConnectAccountStateCopyWith<$Res> {
  factory _$$ConnectAccountStateImplCopyWith(_$ConnectAccountStateImpl value,
          $Res Function(_$ConnectAccountStateImpl) then) =
      __$$ConnectAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedType,
      String username,
      String password,
      String token,
      List<ValueEntity> listType,
      String? errorUsername,
      String? errorPassword,
      String? errorToken,
      bool passwordVisibilityStatus,
      AppFailure? failure,
      bool focusStatusUsername,
      bool focusStatusPassword,
      bool focusStatusToken,
      bool isLoading,
      bool isProcessing,
      bool processing,
      bool isDone,
      bool errorUsernameType,
      InstitutionEntity? institution,
      FormEntity? usernameTypeForm,
      FormEntity? usernameForm,
      FormEntity? passwordForm,
      FormEntity? tokenForm});

  @override
  $AppFailureCopyWith<$Res>? get failure;
  @override
  $InstitutionEntityCopyWith<$Res>? get institution;
  @override
  $FormEntityCopyWith<$Res>? get usernameTypeForm;
  @override
  $FormEntityCopyWith<$Res>? get usernameForm;
  @override
  $FormEntityCopyWith<$Res>? get passwordForm;
  @override
  $FormEntityCopyWith<$Res>? get tokenForm;
}

/// @nodoc
class __$$ConnectAccountStateImplCopyWithImpl<$Res>
    extends _$ConnectAccountStateCopyWithImpl<$Res, _$ConnectAccountStateImpl>
    implements _$$ConnectAccountStateImplCopyWith<$Res> {
  __$$ConnectAccountStateImplCopyWithImpl(_$ConnectAccountStateImpl _value,
      $Res Function(_$ConnectAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedType = null,
    Object? username = null,
    Object? password = null,
    Object? token = null,
    Object? listType = null,
    Object? errorUsername = freezed,
    Object? errorPassword = freezed,
    Object? errorToken = freezed,
    Object? passwordVisibilityStatus = null,
    Object? failure = freezed,
    Object? focusStatusUsername = null,
    Object? focusStatusPassword = null,
    Object? focusStatusToken = null,
    Object? isLoading = null,
    Object? isProcessing = null,
    Object? processing = null,
    Object? isDone = null,
    Object? errorUsernameType = null,
    Object? institution = freezed,
    Object? usernameTypeForm = freezed,
    Object? usernameForm = freezed,
    Object? passwordForm = freezed,
    Object? tokenForm = freezed,
  }) {
    return _then(_$ConnectAccountStateImpl(
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      listType: null == listType
          ? _value._listType
          : listType // ignore: cast_nullable_to_non_nullable
              as List<ValueEntity>,
      errorUsername: freezed == errorUsername
          ? _value.errorUsername
          : errorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      errorPassword: freezed == errorPassword
          ? _value.errorPassword
          : errorPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      errorToken: freezed == errorToken
          ? _value.errorToken
          : errorToken // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordVisibilityStatus: null == passwordVisibilityStatus
          ? _value.passwordVisibilityStatus
          : passwordVisibilityStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      focusStatusUsername: null == focusStatusUsername
          ? _value.focusStatusUsername
          : focusStatusUsername // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusPassword: null == focusStatusPassword
          ? _value.focusStatusPassword
          : focusStatusPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusToken: null == focusStatusToken
          ? _value.focusStatusToken
          : focusStatusToken // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      processing: null == processing
          ? _value.processing
          : processing // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUsernameType: null == errorUsernameType
          ? _value.errorUsernameType
          : errorUsernameType // ignore: cast_nullable_to_non_nullable
              as bool,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as InstitutionEntity?,
      usernameTypeForm: freezed == usernameTypeForm
          ? _value.usernameTypeForm
          : usernameTypeForm // ignore: cast_nullable_to_non_nullable
              as FormEntity?,
      usernameForm: freezed == usernameForm
          ? _value.usernameForm
          : usernameForm // ignore: cast_nullable_to_non_nullable
              as FormEntity?,
      passwordForm: freezed == passwordForm
          ? _value.passwordForm
          : passwordForm // ignore: cast_nullable_to_non_nullable
              as FormEntity?,
      tokenForm: freezed == tokenForm
          ? _value.tokenForm
          : tokenForm // ignore: cast_nullable_to_non_nullable
              as FormEntity?,
    ));
  }
}

/// @nodoc

class _$ConnectAccountStateImpl extends _ConnectAccountState {
  const _$ConnectAccountStateImpl(
      {this.selectedType = -1,
      this.username = '',
      this.password = '',
      this.token = '',
      final List<ValueEntity> listType = const [],
      this.errorUsername,
      this.errorPassword,
      this.errorToken,
      this.passwordVisibilityStatus = false,
      this.failure,
      this.focusStatusUsername = false,
      this.focusStatusPassword = false,
      this.focusStatusToken = false,
      this.isLoading = false,
      this.isProcessing = false,
      this.processing = false,
      this.isDone = false,
      this.errorUsernameType = false,
      this.institution,
      this.usernameTypeForm,
      this.usernameForm,
      this.passwordForm,
      this.tokenForm})
      : _listType = listType,
        super._();

  @override
  @JsonKey()
  final int selectedType;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String token;
  final List<ValueEntity> _listType;
  @override
  @JsonKey()
  List<ValueEntity> get listType {
    if (_listType is EqualUnmodifiableListView) return _listType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listType);
  }

  @override
  final String? errorUsername;
  @override
  final String? errorPassword;
  @override
  final String? errorToken;
  @override
  @JsonKey()
  final bool passwordVisibilityStatus;
  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final bool focusStatusUsername;
  @override
  @JsonKey()
  final bool focusStatusPassword;
  @override
  @JsonKey()
  final bool focusStatusToken;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isProcessing;
  @override
  @JsonKey()
  final bool processing;
  @override
  @JsonKey()
  final bool isDone;
  @override
  @JsonKey()
  final bool errorUsernameType;
  @override
  final InstitutionEntity? institution;
  @override
  final FormEntity? usernameTypeForm;
  @override
  final FormEntity? usernameForm;
  @override
  final FormEntity? passwordForm;
  @override
  final FormEntity? tokenForm;

  @override
  String toString() {
    return 'ConnectAccountState(selectedType: $selectedType, username: $username, password: $password, token: $token, listType: $listType, errorUsername: $errorUsername, errorPassword: $errorPassword, errorToken: $errorToken, passwordVisibilityStatus: $passwordVisibilityStatus, failure: $failure, focusStatusUsername: $focusStatusUsername, focusStatusPassword: $focusStatusPassword, focusStatusToken: $focusStatusToken, isLoading: $isLoading, isProcessing: $isProcessing, processing: $processing, isDone: $isDone, errorUsernameType: $errorUsernameType, institution: $institution, usernameTypeForm: $usernameTypeForm, usernameForm: $usernameForm, passwordForm: $passwordForm, tokenForm: $tokenForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectAccountStateImpl &&
            (identical(other.selectedType, selectedType) ||
                other.selectedType == selectedType) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other._listType, _listType) &&
            (identical(other.errorUsername, errorUsername) ||
                other.errorUsername == errorUsername) &&
            (identical(other.errorPassword, errorPassword) ||
                other.errorPassword == errorPassword) &&
            (identical(other.errorToken, errorToken) ||
                other.errorToken == errorToken) &&
            (identical(
                    other.passwordVisibilityStatus, passwordVisibilityStatus) ||
                other.passwordVisibilityStatus == passwordVisibilityStatus) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.focusStatusUsername, focusStatusUsername) ||
                other.focusStatusUsername == focusStatusUsername) &&
            (identical(other.focusStatusPassword, focusStatusPassword) ||
                other.focusStatusPassword == focusStatusPassword) &&
            (identical(other.focusStatusToken, focusStatusToken) ||
                other.focusStatusToken == focusStatusToken) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.processing, processing) ||
                other.processing == processing) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.errorUsernameType, errorUsernameType) ||
                other.errorUsernameType == errorUsernameType) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.usernameTypeForm, usernameTypeForm) ||
                other.usernameTypeForm == usernameTypeForm) &&
            (identical(other.usernameForm, usernameForm) ||
                other.usernameForm == usernameForm) &&
            (identical(other.passwordForm, passwordForm) ||
                other.passwordForm == passwordForm) &&
            (identical(other.tokenForm, tokenForm) ||
                other.tokenForm == tokenForm));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        selectedType,
        username,
        password,
        token,
        const DeepCollectionEquality().hash(_listType),
        errorUsername,
        errorPassword,
        errorToken,
        passwordVisibilityStatus,
        failure,
        focusStatusUsername,
        focusStatusPassword,
        focusStatusToken,
        isLoading,
        isProcessing,
        processing,
        isDone,
        errorUsernameType,
        institution,
        usernameTypeForm,
        usernameForm,
        passwordForm,
        tokenForm
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectAccountStateImplCopyWith<_$ConnectAccountStateImpl> get copyWith =>
      __$$ConnectAccountStateImplCopyWithImpl<_$ConnectAccountStateImpl>(
          this, _$identity);
}

abstract class _ConnectAccountState extends ConnectAccountState {
  const factory _ConnectAccountState(
      {final int selectedType,
      final String username,
      final String password,
      final String token,
      final List<ValueEntity> listType,
      final String? errorUsername,
      final String? errorPassword,
      final String? errorToken,
      final bool passwordVisibilityStatus,
      final AppFailure? failure,
      final bool focusStatusUsername,
      final bool focusStatusPassword,
      final bool focusStatusToken,
      final bool isLoading,
      final bool isProcessing,
      final bool processing,
      final bool isDone,
      final bool errorUsernameType,
      final InstitutionEntity? institution,
      final FormEntity? usernameTypeForm,
      final FormEntity? usernameForm,
      final FormEntity? passwordForm,
      final FormEntity? tokenForm}) = _$ConnectAccountStateImpl;
  const _ConnectAccountState._() : super._();

  @override
  int get selectedType;
  @override
  String get username;
  @override
  String get password;
  @override
  String get token;
  @override
  List<ValueEntity> get listType;
  @override
  String? get errorUsername;
  @override
  String? get errorPassword;
  @override
  String? get errorToken;
  @override
  bool get passwordVisibilityStatus;
  @override
  AppFailure? get failure;
  @override
  bool get focusStatusUsername;
  @override
  bool get focusStatusPassword;
  @override
  bool get focusStatusToken;
  @override
  bool get isLoading;
  @override
  bool get isProcessing;
  @override
  bool get processing;
  @override
  bool get isDone;
  @override
  bool get errorUsernameType;
  @override
  InstitutionEntity? get institution;
  @override
  FormEntity? get usernameTypeForm;
  @override
  FormEntity? get usernameForm;
  @override
  FormEntity? get passwordForm;
  @override
  FormEntity? get tokenForm;
  @override
  @JsonKey(ignore: true)
  _$$ConnectAccountStateImplCopyWith<_$ConnectAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
