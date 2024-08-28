// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileState {
  String get name => throw _privateConstructorUsedError;
  String get familyName => throw _privateConstructorUsedError;
  AppInputErrorRequired? get errorName => throw _privateConstructorUsedError;
  AppInputErrorRequired? get errorFamilyName =>
      throw _privateConstructorUsedError;
  bool get focusStatusName => throw _privateConstructorUsedError;
  bool get focusStatusFamilyName => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  AppFailure? get failure => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  UserEntity? get currentUser => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
  @useResult
  $Res call(
      {String name,
      String familyName,
      AppInputErrorRequired? errorName,
      AppInputErrorRequired? errorFamilyName,
      bool focusStatusName,
      bool focusStatusFamilyName,
      Gender gender,
      AppFailure? failure,
      DateTime? birthDate,
      UserEntity? currentUser,
      bool isLoading,
      bool isProcessing});

  $AppFailureCopyWith<$Res>? get failure;
  $UserEntityCopyWith<$Res>? get currentUser;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? familyName = null,
    Object? errorName = freezed,
    Object? errorFamilyName = freezed,
    Object? focusStatusName = null,
    Object? focusStatusFamilyName = null,
    Object? gender = null,
    Object? failure = freezed,
    Object? birthDate = freezed,
    Object? currentUser = freezed,
    Object? isLoading = null,
    Object? isProcessing = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
      errorName: freezed == errorName
          ? _value.errorName
          : errorName // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorFamilyName: freezed == errorFamilyName
          ? _value.errorFamilyName
          : errorFamilyName // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      focusStatusName: null == focusStatusName
          ? _value.focusStatusName
          : focusStatusName // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusFamilyName: null == focusStatusFamilyName
          ? _value.focusStatusFamilyName
          : focusStatusFamilyName // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $UserEntityCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditProfileStateImplCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$$EditProfileStateImplCopyWith(_$EditProfileStateImpl value,
          $Res Function(_$EditProfileStateImpl) then) =
      __$$EditProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String familyName,
      AppInputErrorRequired? errorName,
      AppInputErrorRequired? errorFamilyName,
      bool focusStatusName,
      bool focusStatusFamilyName,
      Gender gender,
      AppFailure? failure,
      DateTime? birthDate,
      UserEntity? currentUser,
      bool isLoading,
      bool isProcessing});

  @override
  $AppFailureCopyWith<$Res>? get failure;
  @override
  $UserEntityCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$EditProfileStateImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileStateImpl>
    implements _$$EditProfileStateImplCopyWith<$Res> {
  __$$EditProfileStateImplCopyWithImpl(_$EditProfileStateImpl _value,
      $Res Function(_$EditProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? familyName = null,
    Object? errorName = freezed,
    Object? errorFamilyName = freezed,
    Object? focusStatusName = null,
    Object? focusStatusFamilyName = null,
    Object? gender = null,
    Object? failure = freezed,
    Object? birthDate = freezed,
    Object? currentUser = freezed,
    Object? isLoading = null,
    Object? isProcessing = null,
  }) {
    return _then(_$EditProfileStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      familyName: null == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String,
      errorName: freezed == errorName
          ? _value.errorName
          : errorName // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorFamilyName: freezed == errorFamilyName
          ? _value.errorFamilyName
          : errorFamilyName // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      focusStatusName: null == focusStatusName
          ? _value.focusStatusName
          : focusStatusName // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusFamilyName: null == focusStatusFamilyName
          ? _value.focusStatusFamilyName
          : focusStatusFamilyName // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditProfileStateImpl extends _EditProfileState {
  const _$EditProfileStateImpl(
      {this.name = '',
      this.familyName = '',
      this.errorName,
      this.errorFamilyName,
      this.focusStatusName = false,
      this.focusStatusFamilyName = false,
      this.gender = Gender.male,
      this.failure,
      this.birthDate,
      this.currentUser,
      this.isLoading = false,
      this.isProcessing = false})
      : super._();

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String familyName;
  @override
  final AppInputErrorRequired? errorName;
  @override
  final AppInputErrorRequired? errorFamilyName;
  @override
  @JsonKey()
  final bool focusStatusName;
  @override
  @JsonKey()
  final bool focusStatusFamilyName;
  @override
  @JsonKey()
  final Gender gender;
  @override
  final AppFailure? failure;
  @override
  final DateTime? birthDate;
  @override
  final UserEntity? currentUser;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isProcessing;

  @override
  String toString() {
    return 'EditProfileState(name: $name, familyName: $familyName, errorName: $errorName, errorFamilyName: $errorFamilyName, focusStatusName: $focusStatusName, focusStatusFamilyName: $focusStatusFamilyName, gender: $gender, failure: $failure, birthDate: $birthDate, currentUser: $currentUser, isLoading: $isLoading, isProcessing: $isProcessing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName) &&
            (identical(other.errorName, errorName) ||
                other.errorName == errorName) &&
            (identical(other.errorFamilyName, errorFamilyName) ||
                other.errorFamilyName == errorFamilyName) &&
            (identical(other.focusStatusName, focusStatusName) ||
                other.focusStatusName == focusStatusName) &&
            (identical(other.focusStatusFamilyName, focusStatusFamilyName) ||
                other.focusStatusFamilyName == focusStatusFamilyName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      familyName,
      errorName,
      errorFamilyName,
      focusStatusName,
      focusStatusFamilyName,
      gender,
      failure,
      birthDate,
      currentUser,
      isLoading,
      isProcessing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      __$$EditProfileStateImplCopyWithImpl<_$EditProfileStateImpl>(
          this, _$identity);
}

abstract class _EditProfileState extends EditProfileState {
  const factory _EditProfileState(
      {final String name,
      final String familyName,
      final AppInputErrorRequired? errorName,
      final AppInputErrorRequired? errorFamilyName,
      final bool focusStatusName,
      final bool focusStatusFamilyName,
      final Gender gender,
      final AppFailure? failure,
      final DateTime? birthDate,
      final UserEntity? currentUser,
      final bool isLoading,
      final bool isProcessing}) = _$EditProfileStateImpl;
  const _EditProfileState._() : super._();

  @override
  String get name;
  @override
  String get familyName;
  @override
  AppInputErrorRequired? get errorName;
  @override
  AppInputErrorRequired? get errorFamilyName;
  @override
  bool get focusStatusName;
  @override
  bool get focusStatusFamilyName;
  @override
  Gender get gender;
  @override
  AppFailure? get failure;
  @override
  DateTime? get birthDate;
  @override
  UserEntity? get currentUser;
  @override
  bool get isLoading;
  @override
  bool get isProcessing;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
