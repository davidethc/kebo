// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailTransactionState {
  String get description => throw _privateConstructorUsedError;
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  TransactionEntity? get transaction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailTransactionStateCopyWith<DetailTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTransactionStateCopyWith<$Res> {
  factory $DetailTransactionStateCopyWith(DetailTransactionState value,
          $Res Function(DetailTransactionState) then) =
      _$DetailTransactionStateCopyWithImpl<$Res, DetailTransactionState>;
  @useResult
  $Res call(
      {String description,
      AppFailure? failure,
      bool isLoading,
      bool isDone,
      TransactionEntity? transaction});

  $AppFailureCopyWith<$Res>? get failure;
  $TransactionEntityCopyWith<$Res>? get transaction;
}

/// @nodoc
class _$DetailTransactionStateCopyWithImpl<$Res,
        $Val extends DetailTransactionState>
    implements $DetailTransactionStateCopyWith<$Res> {
  _$DetailTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isDone = null,
    Object? transaction = freezed,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionEntity?,
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
  $TransactionEntityCopyWith<$Res>? get transaction {
    if (_value.transaction == null) {
      return null;
    }

    return $TransactionEntityCopyWith<$Res>(_value.transaction!, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailTransactionStateImplCopyWith<$Res>
    implements $DetailTransactionStateCopyWith<$Res> {
  factory _$$DetailTransactionStateImplCopyWith(
          _$DetailTransactionStateImpl value,
          $Res Function(_$DetailTransactionStateImpl) then) =
      __$$DetailTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      AppFailure? failure,
      bool isLoading,
      bool isDone,
      TransactionEntity? transaction});

  @override
  $AppFailureCopyWith<$Res>? get failure;
  @override
  $TransactionEntityCopyWith<$Res>? get transaction;
}

/// @nodoc
class __$$DetailTransactionStateImplCopyWithImpl<$Res>
    extends _$DetailTransactionStateCopyWithImpl<$Res,
        _$DetailTransactionStateImpl>
    implements _$$DetailTransactionStateImplCopyWith<$Res> {
  __$$DetailTransactionStateImplCopyWithImpl(
      _$DetailTransactionStateImpl _value,
      $Res Function(_$DetailTransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isDone = null,
    Object? transaction = freezed,
  }) {
    return _then(_$DetailTransactionStateImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionEntity?,
    ));
  }
}

/// @nodoc

class _$DetailTransactionStateImpl extends _DetailTransactionState
    with DiagnosticableTreeMixin {
  const _$DetailTransactionStateImpl(
      {this.description = '',
      this.failure,
      this.isLoading = false,
      this.isDone = false,
      this.transaction})
      : super._();

  @override
  @JsonKey()
  final String description;
  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isDone;
  @override
  final TransactionEntity? transaction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailTransactionState(description: $description, failure: $failure, isLoading: $isLoading, isDone: $isDone, transaction: $transaction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailTransactionState'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isDone', isDone))
      ..add(DiagnosticsProperty('transaction', transaction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTransactionStateImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, description, failure, isLoading, isDone, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTransactionStateImplCopyWith<_$DetailTransactionStateImpl>
      get copyWith => __$$DetailTransactionStateImplCopyWithImpl<
          _$DetailTransactionStateImpl>(this, _$identity);
}

abstract class _DetailTransactionState extends DetailTransactionState {
  const factory _DetailTransactionState(
      {final String description,
      final AppFailure? failure,
      final bool isLoading,
      final bool isDone,
      final TransactionEntity? transaction}) = _$DetailTransactionStateImpl;
  const _DetailTransactionState._() : super._();

  @override
  String get description;
  @override
  AppFailure? get failure;
  @override
  bool get isLoading;
  @override
  bool get isDone;
  @override
  TransactionEntity? get transaction;
  @override
  @JsonKey(ignore: true)
  _$$DetailTransactionStateImplCopyWith<_$DetailTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
