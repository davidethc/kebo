// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddAccountState {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get balance => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  AppInputErrorRequired? get errorName => throw _privateConstructorUsedError;
  AppInputErrorRequired? get errorBalance => throw _privateConstructorUsedError;
  AppInputErrorRequired? get errorDescription =>
      throw _privateConstructorUsedError;
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get focusStatusBalance => throw _privateConstructorUsedError;
  bool get focusStatusName => throw _privateConstructorUsedError;
  bool get focusStatusDescription => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAccountStateCopyWith<AddAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAccountStateCopyWith<$Res> {
  factory $AddAccountStateCopyWith(
          AddAccountState value, $Res Function(AddAccountState) then) =
      _$AddAccountStateCopyWithImpl<$Res, AddAccountState>;
  @useResult
  $Res call(
      {String name,
      String description,
      String balance,
      String id,
      AppInputErrorRequired? errorName,
      AppInputErrorRequired? errorBalance,
      AppInputErrorRequired? errorDescription,
      AppFailure? failure,
      bool focusStatusBalance,
      bool focusStatusName,
      bool focusStatusDescription,
      bool isLoading,
      bool isDone});

  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$AddAccountStateCopyWithImpl<$Res, $Val extends AddAccountState>
    implements $AddAccountStateCopyWith<$Res> {
  _$AddAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? balance = null,
    Object? id = null,
    Object? errorName = freezed,
    Object? errorBalance = freezed,
    Object? errorDescription = freezed,
    Object? failure = freezed,
    Object? focusStatusBalance = null,
    Object? focusStatusName = null,
    Object? focusStatusDescription = null,
    Object? isLoading = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      errorName: freezed == errorName
          ? _value.errorName
          : errorName // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorBalance: freezed == errorBalance
          ? _value.errorBalance
          : errorBalance // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      focusStatusBalance: null == focusStatusBalance
          ? _value.focusStatusBalance
          : focusStatusBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusName: null == focusStatusName
          ? _value.focusStatusName
          : focusStatusName // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusDescription: null == focusStatusDescription
          ? _value.focusStatusDescription
          : focusStatusDescription // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$AddAccountStateImplCopyWith<$Res>
    implements $AddAccountStateCopyWith<$Res> {
  factory _$$AddAccountStateImplCopyWith(_$AddAccountStateImpl value,
          $Res Function(_$AddAccountStateImpl) then) =
      __$$AddAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String balance,
      String id,
      AppInputErrorRequired? errorName,
      AppInputErrorRequired? errorBalance,
      AppInputErrorRequired? errorDescription,
      AppFailure? failure,
      bool focusStatusBalance,
      bool focusStatusName,
      bool focusStatusDescription,
      bool isLoading,
      bool isDone});

  @override
  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$AddAccountStateImplCopyWithImpl<$Res>
    extends _$AddAccountStateCopyWithImpl<$Res, _$AddAccountStateImpl>
    implements _$$AddAccountStateImplCopyWith<$Res> {
  __$$AddAccountStateImplCopyWithImpl(
      _$AddAccountStateImpl _value, $Res Function(_$AddAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? balance = null,
    Object? id = null,
    Object? errorName = freezed,
    Object? errorBalance = freezed,
    Object? errorDescription = freezed,
    Object? failure = freezed,
    Object? focusStatusBalance = null,
    Object? focusStatusName = null,
    Object? focusStatusDescription = null,
    Object? isLoading = null,
    Object? isDone = null,
  }) {
    return _then(_$AddAccountStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      errorName: freezed == errorName
          ? _value.errorName
          : errorName // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorBalance: freezed == errorBalance
          ? _value.errorBalance
          : errorBalance // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      focusStatusBalance: null == focusStatusBalance
          ? _value.focusStatusBalance
          : focusStatusBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusName: null == focusStatusName
          ? _value.focusStatusName
          : focusStatusName // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusDescription: null == focusStatusDescription
          ? _value.focusStatusDescription
          : focusStatusDescription // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddAccountStateImpl extends _AddAccountState {
  const _$AddAccountStateImpl(
      {this.name = '',
      this.description = '',
      this.balance = '',
      this.id = '',
      this.errorName,
      this.errorBalance,
      this.errorDescription,
      this.failure,
      this.focusStatusBalance = false,
      this.focusStatusName = false,
      this.focusStatusDescription = false,
      this.isLoading = false,
      this.isDone = false})
      : super._();

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String balance;
  @override
  @JsonKey()
  final String id;
  @override
  final AppInputErrorRequired? errorName;
  @override
  final AppInputErrorRequired? errorBalance;
  @override
  final AppInputErrorRequired? errorDescription;
  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final bool focusStatusBalance;
  @override
  @JsonKey()
  final bool focusStatusName;
  @override
  @JsonKey()
  final bool focusStatusDescription;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isDone;

  @override
  String toString() {
    return 'AddAccountState(name: $name, description: $description, balance: $balance, id: $id, errorName: $errorName, errorBalance: $errorBalance, errorDescription: $errorDescription, failure: $failure, focusStatusBalance: $focusStatusBalance, focusStatusName: $focusStatusName, focusStatusDescription: $focusStatusDescription, isLoading: $isLoading, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAccountStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.errorName, errorName) ||
                other.errorName == errorName) &&
            (identical(other.errorBalance, errorBalance) ||
                other.errorBalance == errorBalance) &&
            (identical(other.errorDescription, errorDescription) ||
                other.errorDescription == errorDescription) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.focusStatusBalance, focusStatusBalance) ||
                other.focusStatusBalance == focusStatusBalance) &&
            (identical(other.focusStatusName, focusStatusName) ||
                other.focusStatusName == focusStatusName) &&
            (identical(other.focusStatusDescription, focusStatusDescription) ||
                other.focusStatusDescription == focusStatusDescription) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      balance,
      id,
      errorName,
      errorBalance,
      errorDescription,
      failure,
      focusStatusBalance,
      focusStatusName,
      focusStatusDescription,
      isLoading,
      isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAccountStateImplCopyWith<_$AddAccountStateImpl> get copyWith =>
      __$$AddAccountStateImplCopyWithImpl<_$AddAccountStateImpl>(
          this, _$identity);
}

abstract class _AddAccountState extends AddAccountState {
  const factory _AddAccountState(
      {final String name,
      final String description,
      final String balance,
      final String id,
      final AppInputErrorRequired? errorName,
      final AppInputErrorRequired? errorBalance,
      final AppInputErrorRequired? errorDescription,
      final AppFailure? failure,
      final bool focusStatusBalance,
      final bool focusStatusName,
      final bool focusStatusDescription,
      final bool isLoading,
      final bool isDone}) = _$AddAccountStateImpl;
  const _AddAccountState._() : super._();

  @override
  String get name;
  @override
  String get description;
  @override
  String get balance;
  @override
  String get id;
  @override
  AppInputErrorRequired? get errorName;
  @override
  AppInputErrorRequired? get errorBalance;
  @override
  AppInputErrorRequired? get errorDescription;
  @override
  AppFailure? get failure;
  @override
  bool get focusStatusBalance;
  @override
  bool get focusStatusName;
  @override
  bool get focusStatusDescription;
  @override
  bool get isLoading;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$AddAccountStateImplCopyWith<_$AddAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
