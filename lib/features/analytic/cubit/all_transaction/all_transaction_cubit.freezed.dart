// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllTransactionState {
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingAccount => throw _privateConstructorUsedError;
  List<TransactionEntity> get transactions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllTransactionStateCopyWith<AllTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllTransactionStateCopyWith<$Res> {
  factory $AllTransactionStateCopyWith(
          AllTransactionState value, $Res Function(AllTransactionState) then) =
      _$AllTransactionStateCopyWithImpl<$Res, AllTransactionState>;
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isLoading,
      bool isLoadingAccount,
      List<TransactionEntity> transactions});

  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$AllTransactionStateCopyWithImpl<$Res, $Val extends AllTransactionState>
    implements $AllTransactionStateCopyWith<$Res> {
  _$AllTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isLoadingAccount = null,
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingAccount: null == isLoadingAccount
          ? _value.isLoadingAccount
          : isLoadingAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
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
abstract class _$$AllTransactionStateImplCopyWith<$Res>
    implements $AllTransactionStateCopyWith<$Res> {
  factory _$$AllTransactionStateImplCopyWith(_$AllTransactionStateImpl value,
          $Res Function(_$AllTransactionStateImpl) then) =
      __$$AllTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isLoading,
      bool isLoadingAccount,
      List<TransactionEntity> transactions});

  @override
  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$AllTransactionStateImplCopyWithImpl<$Res>
    extends _$AllTransactionStateCopyWithImpl<$Res, _$AllTransactionStateImpl>
    implements _$$AllTransactionStateImplCopyWith<$Res> {
  __$$AllTransactionStateImplCopyWithImpl(_$AllTransactionStateImpl _value,
      $Res Function(_$AllTransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isLoadingAccount = null,
    Object? transactions = null,
  }) {
    return _then(_$AllTransactionStateImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingAccount: null == isLoadingAccount
          ? _value.isLoadingAccount
          : isLoadingAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
    ));
  }
}

/// @nodoc

class _$AllTransactionStateImpl extends _AllTransactionState {
  const _$AllTransactionStateImpl(
      {this.failure,
      this.isLoading = false,
      this.isLoadingAccount = false,
      final List<TransactionEntity> transactions = const []})
      : _transactions = transactions,
        super._();

  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingAccount;
  final List<TransactionEntity> _transactions;
  @override
  @JsonKey()
  List<TransactionEntity> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'AllTransactionState(failure: $failure, isLoading: $isLoading, isLoadingAccount: $isLoadingAccount, transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllTransactionStateImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingAccount, isLoadingAccount) ||
                other.isLoadingAccount == isLoadingAccount) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, isLoading,
      isLoadingAccount, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllTransactionStateImplCopyWith<_$AllTransactionStateImpl> get copyWith =>
      __$$AllTransactionStateImplCopyWithImpl<_$AllTransactionStateImpl>(
          this, _$identity);
}

abstract class _AllTransactionState extends AllTransactionState {
  const factory _AllTransactionState(
      {final AppFailure? failure,
      final bool isLoading,
      final bool isLoadingAccount,
      final List<TransactionEntity> transactions}) = _$AllTransactionStateImpl;
  const _AllTransactionState._() : super._();

  @override
  AppFailure? get failure;
  @override
  bool get isLoading;
  @override
  bool get isLoadingAccount;
  @override
  List<TransactionEntity> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$AllTransactionStateImplCopyWith<_$AllTransactionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
