// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailAccountState {
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  List<TransactionEntity> get transactions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailAccountStateCopyWith<DetailAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailAccountStateCopyWith<$Res> {
  factory $DetailAccountStateCopyWith(
          DetailAccountState value, $Res Function(DetailAccountState) then) =
      _$DetailAccountStateCopyWithImpl<$Res, DetailAccountState>;
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isLoading,
      bool isProcessing,
      List<TransactionEntity> transactions});

  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$DetailAccountStateCopyWithImpl<$Res, $Val extends DetailAccountState>
    implements $DetailAccountStateCopyWith<$Res> {
  _$DetailAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isProcessing = null,
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
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DetailAccountStateImplCopyWith<$Res>
    implements $DetailAccountStateCopyWith<$Res> {
  factory _$$DetailAccountStateImplCopyWith(_$DetailAccountStateImpl value,
          $Res Function(_$DetailAccountStateImpl) then) =
      __$$DetailAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isLoading,
      bool isProcessing,
      List<TransactionEntity> transactions});

  @override
  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$DetailAccountStateImplCopyWithImpl<$Res>
    extends _$DetailAccountStateCopyWithImpl<$Res, _$DetailAccountStateImpl>
    implements _$$DetailAccountStateImplCopyWith<$Res> {
  __$$DetailAccountStateImplCopyWithImpl(_$DetailAccountStateImpl _value,
      $Res Function(_$DetailAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isProcessing = null,
    Object? transactions = null,
  }) {
    return _then(_$DetailAccountStateImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
    ));
  }
}

/// @nodoc

class _$DetailAccountStateImpl extends _DetailAccountState {
  const _$DetailAccountStateImpl(
      {this.failure,
      this.isLoading = false,
      this.isProcessing = false,
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
  final bool isProcessing;
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
    return 'DetailAccountState(failure: $failure, isLoading: $isLoading, isProcessing: $isProcessing, transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailAccountStateImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, isLoading, isProcessing,
      const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailAccountStateImplCopyWith<_$DetailAccountStateImpl> get copyWith =>
      __$$DetailAccountStateImplCopyWithImpl<_$DetailAccountStateImpl>(
          this, _$identity);
}

abstract class _DetailAccountState extends DetailAccountState {
  const factory _DetailAccountState(
      {final AppFailure? failure,
      final bool isLoading,
      final bool isProcessing,
      final List<TransactionEntity> transactions}) = _$DetailAccountStateImpl;
  const _DetailAccountState._() : super._();

  @override
  AppFailure? get failure;
  @override
  bool get isLoading;
  @override
  bool get isProcessing;
  @override
  List<TransactionEntity> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$DetailAccountStateImplCopyWith<_$DetailAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
