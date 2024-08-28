// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionState {
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get isShowMore => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingAccount => throw _privateConstructorUsedError;
  List<TransactionEntity> get transactions =>
      throw _privateConstructorUsedError;
  List<AccountEntity> get accounts => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isShowMore,
      bool isProcessing,
      bool isLoading,
      bool isLoadingAccount,
      List<TransactionEntity> transactions,
      List<AccountEntity> accounts,
      double balance});

  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isShowMore = null,
    Object? isProcessing = null,
    Object? isLoading = null,
    Object? isLoadingAccount = null,
    Object? transactions = null,
    Object? accounts = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isShowMore: null == isShowMore
          ? _value.isShowMore
          : isShowMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
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
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountEntity>,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$TransactionStateImplCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$TransactionStateImplCopyWith(_$TransactionStateImpl value,
          $Res Function(_$TransactionStateImpl) then) =
      __$$TransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isShowMore,
      bool isProcessing,
      bool isLoading,
      bool isLoadingAccount,
      List<TransactionEntity> transactions,
      List<AccountEntity> accounts,
      double balance});

  @override
  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$TransactionStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionStateImpl>
    implements _$$TransactionStateImplCopyWith<$Res> {
  __$$TransactionStateImplCopyWithImpl(_$TransactionStateImpl _value,
      $Res Function(_$TransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isShowMore = null,
    Object? isProcessing = null,
    Object? isLoading = null,
    Object? isLoadingAccount = null,
    Object? transactions = null,
    Object? accounts = null,
    Object? balance = null,
  }) {
    return _then(_$TransactionStateImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isShowMore: null == isShowMore
          ? _value.isShowMore
          : isShowMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
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
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountEntity>,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TransactionStateImpl extends _TransactionState {
  const _$TransactionStateImpl(
      {this.failure,
      this.isShowMore = false,
      this.isProcessing = false,
      this.isLoading = false,
      this.isLoadingAccount = false,
      final List<TransactionEntity> transactions = const [],
      final List<AccountEntity> accounts = const [],
      this.balance = 0})
      : _transactions = transactions,
        _accounts = accounts,
        super._();

  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final bool isShowMore;
  @override
  @JsonKey()
  final bool isProcessing;
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

  final List<AccountEntity> _accounts;
  @override
  @JsonKey()
  List<AccountEntity> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  @JsonKey()
  final double balance;

  @override
  String toString() {
    return 'TransactionState(failure: $failure, isShowMore: $isShowMore, isProcessing: $isProcessing, isLoading: $isLoading, isLoadingAccount: $isLoadingAccount, transactions: $transactions, accounts: $accounts, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStateImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isShowMore, isShowMore) ||
                other.isShowMore == isShowMore) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingAccount, isLoadingAccount) ||
                other.isLoadingAccount == isLoadingAccount) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failure,
      isShowMore,
      isProcessing,
      isLoading,
      isLoadingAccount,
      const DeepCollectionEquality().hash(_transactions),
      const DeepCollectionEquality().hash(_accounts),
      balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      __$$TransactionStateImplCopyWithImpl<_$TransactionStateImpl>(
          this, _$identity);
}

abstract class _TransactionState extends TransactionState {
  const factory _TransactionState(
      {final AppFailure? failure,
      final bool isShowMore,
      final bool isProcessing,
      final bool isLoading,
      final bool isLoadingAccount,
      final List<TransactionEntity> transactions,
      final List<AccountEntity> accounts,
      final double balance}) = _$TransactionStateImpl;
  const _TransactionState._() : super._();

  @override
  AppFailure? get failure;
  @override
  bool get isShowMore;
  @override
  bool get isProcessing;
  @override
  bool get isLoading;
  @override
  bool get isLoadingAccount;
  @override
  List<TransactionEntity> get transactions;
  @override
  List<AccountEntity> get accounts;
  @override
  double get balance;
  @override
  @JsonKey(ignore: true)
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
