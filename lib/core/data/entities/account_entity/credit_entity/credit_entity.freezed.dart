// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreditEntity _$CreditEntityFromJson(Map<String, dynamic> json) {
  return _CreditEntity.fromJson(json);
}

/// @nodoc
mixin _$CreditEntity {
  @JsonKey(name: 'collected_at')
  String get collectedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_limit')
  int get creditLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'cutting_date')
  String get cuttingDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_payment_date')
  String get nextPaymentDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_payment')
  int get minimumPayment => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_payment')
  int get monthlyPayment => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_interest_payment')
  int get noInterestPayment => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_payment_date')
  String get lastPaymentDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_period_balance')
  int get lastPeriodBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'interest_rate')
  int get interestRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditEntityCopyWith<CreditEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditEntityCopyWith<$Res> {
  factory $CreditEntityCopyWith(
          CreditEntity value, $Res Function(CreditEntity) then) =
      _$CreditEntityCopyWithImpl<$Res, CreditEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'collected_at') String collectedAt,
      @JsonKey(name: 'credit_limit') int creditLimit,
      @JsonKey(name: 'cutting_date') String cuttingDate,
      @JsonKey(name: 'next_payment_date') String nextPaymentDate,
      @JsonKey(name: 'minimum_payment') int minimumPayment,
      @JsonKey(name: 'monthly_payment') int monthlyPayment,
      @JsonKey(name: 'no_interest_payment') int noInterestPayment,
      @JsonKey(name: 'last_payment_date') String lastPaymentDate,
      @JsonKey(name: 'last_period_balance') int lastPeriodBalance,
      @JsonKey(name: 'interest_rate') int interestRate});
}

/// @nodoc
class _$CreditEntityCopyWithImpl<$Res, $Val extends CreditEntity>
    implements $CreditEntityCopyWith<$Res> {
  _$CreditEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectedAt = null,
    Object? creditLimit = null,
    Object? cuttingDate = null,
    Object? nextPaymentDate = null,
    Object? minimumPayment = null,
    Object? monthlyPayment = null,
    Object? noInterestPayment = null,
    Object? lastPaymentDate = null,
    Object? lastPeriodBalance = null,
    Object? interestRate = null,
  }) {
    return _then(_value.copyWith(
      collectedAt: null == collectedAt
          ? _value.collectedAt
          : collectedAt // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: null == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as int,
      cuttingDate: null == cuttingDate
          ? _value.cuttingDate
          : cuttingDate // ignore: cast_nullable_to_non_nullable
              as String,
      nextPaymentDate: null == nextPaymentDate
          ? _value.nextPaymentDate
          : nextPaymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      minimumPayment: null == minimumPayment
          ? _value.minimumPayment
          : minimumPayment // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyPayment: null == monthlyPayment
          ? _value.monthlyPayment
          : monthlyPayment // ignore: cast_nullable_to_non_nullable
              as int,
      noInterestPayment: null == noInterestPayment
          ? _value.noInterestPayment
          : noInterestPayment // ignore: cast_nullable_to_non_nullable
              as int,
      lastPaymentDate: null == lastPaymentDate
          ? _value.lastPaymentDate
          : lastPaymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      lastPeriodBalance: null == lastPeriodBalance
          ? _value.lastPeriodBalance
          : lastPeriodBalance // ignore: cast_nullable_to_non_nullable
              as int,
      interestRate: null == interestRate
          ? _value.interestRate
          : interestRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditEntityImplCopyWith<$Res>
    implements $CreditEntityCopyWith<$Res> {
  factory _$$CreditEntityImplCopyWith(
          _$CreditEntityImpl value, $Res Function(_$CreditEntityImpl) then) =
      __$$CreditEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'collected_at') String collectedAt,
      @JsonKey(name: 'credit_limit') int creditLimit,
      @JsonKey(name: 'cutting_date') String cuttingDate,
      @JsonKey(name: 'next_payment_date') String nextPaymentDate,
      @JsonKey(name: 'minimum_payment') int minimumPayment,
      @JsonKey(name: 'monthly_payment') int monthlyPayment,
      @JsonKey(name: 'no_interest_payment') int noInterestPayment,
      @JsonKey(name: 'last_payment_date') String lastPaymentDate,
      @JsonKey(name: 'last_period_balance') int lastPeriodBalance,
      @JsonKey(name: 'interest_rate') int interestRate});
}

/// @nodoc
class __$$CreditEntityImplCopyWithImpl<$Res>
    extends _$CreditEntityCopyWithImpl<$Res, _$CreditEntityImpl>
    implements _$$CreditEntityImplCopyWith<$Res> {
  __$$CreditEntityImplCopyWithImpl(
      _$CreditEntityImpl _value, $Res Function(_$CreditEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectedAt = null,
    Object? creditLimit = null,
    Object? cuttingDate = null,
    Object? nextPaymentDate = null,
    Object? minimumPayment = null,
    Object? monthlyPayment = null,
    Object? noInterestPayment = null,
    Object? lastPaymentDate = null,
    Object? lastPeriodBalance = null,
    Object? interestRate = null,
  }) {
    return _then(_$CreditEntityImpl(
      collectedAt: null == collectedAt
          ? _value.collectedAt
          : collectedAt // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: null == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as int,
      cuttingDate: null == cuttingDate
          ? _value.cuttingDate
          : cuttingDate // ignore: cast_nullable_to_non_nullable
              as String,
      nextPaymentDate: null == nextPaymentDate
          ? _value.nextPaymentDate
          : nextPaymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      minimumPayment: null == minimumPayment
          ? _value.minimumPayment
          : minimumPayment // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyPayment: null == monthlyPayment
          ? _value.monthlyPayment
          : monthlyPayment // ignore: cast_nullable_to_non_nullable
              as int,
      noInterestPayment: null == noInterestPayment
          ? _value.noInterestPayment
          : noInterestPayment // ignore: cast_nullable_to_non_nullable
              as int,
      lastPaymentDate: null == lastPaymentDate
          ? _value.lastPaymentDate
          : lastPaymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      lastPeriodBalance: null == lastPeriodBalance
          ? _value.lastPeriodBalance
          : lastPeriodBalance // ignore: cast_nullable_to_non_nullable
              as int,
      interestRate: null == interestRate
          ? _value.interestRate
          : interestRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditEntityImpl extends _CreditEntity {
  const _$CreditEntityImpl(
      {@JsonKey(name: 'collected_at') this.collectedAt = '',
      @JsonKey(name: 'credit_limit') this.creditLimit = 0,
      @JsonKey(name: 'cutting_date') this.cuttingDate = '',
      @JsonKey(name: 'next_payment_date') this.nextPaymentDate = '',
      @JsonKey(name: 'minimum_payment') this.minimumPayment = 0,
      @JsonKey(name: 'monthly_payment') this.monthlyPayment = 0,
      @JsonKey(name: 'no_interest_payment') this.noInterestPayment = 0,
      @JsonKey(name: 'last_payment_date') this.lastPaymentDate = '',
      @JsonKey(name: 'last_period_balance') this.lastPeriodBalance = 0,
      @JsonKey(name: 'interest_rate') this.interestRate = 0})
      : super._();

  factory _$CreditEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditEntityImplFromJson(json);

  @override
  @JsonKey(name: 'collected_at')
  final String collectedAt;
  @override
  @JsonKey(name: 'credit_limit')
  final int creditLimit;
  @override
  @JsonKey(name: 'cutting_date')
  final String cuttingDate;
  @override
  @JsonKey(name: 'next_payment_date')
  final String nextPaymentDate;
  @override
  @JsonKey(name: 'minimum_payment')
  final int minimumPayment;
  @override
  @JsonKey(name: 'monthly_payment')
  final int monthlyPayment;
  @override
  @JsonKey(name: 'no_interest_payment')
  final int noInterestPayment;
  @override
  @JsonKey(name: 'last_payment_date')
  final String lastPaymentDate;
  @override
  @JsonKey(name: 'last_period_balance')
  final int lastPeriodBalance;
  @override
  @JsonKey(name: 'interest_rate')
  final int interestRate;

  @override
  String toString() {
    return 'CreditEntity(collectedAt: $collectedAt, creditLimit: $creditLimit, cuttingDate: $cuttingDate, nextPaymentDate: $nextPaymentDate, minimumPayment: $minimumPayment, monthlyPayment: $monthlyPayment, noInterestPayment: $noInterestPayment, lastPaymentDate: $lastPaymentDate, lastPeriodBalance: $lastPeriodBalance, interestRate: $interestRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditEntityImpl &&
            (identical(other.collectedAt, collectedAt) ||
                other.collectedAt == collectedAt) &&
            (identical(other.creditLimit, creditLimit) ||
                other.creditLimit == creditLimit) &&
            (identical(other.cuttingDate, cuttingDate) ||
                other.cuttingDate == cuttingDate) &&
            (identical(other.nextPaymentDate, nextPaymentDate) ||
                other.nextPaymentDate == nextPaymentDate) &&
            (identical(other.minimumPayment, minimumPayment) ||
                other.minimumPayment == minimumPayment) &&
            (identical(other.monthlyPayment, monthlyPayment) ||
                other.monthlyPayment == monthlyPayment) &&
            (identical(other.noInterestPayment, noInterestPayment) ||
                other.noInterestPayment == noInterestPayment) &&
            (identical(other.lastPaymentDate, lastPaymentDate) ||
                other.lastPaymentDate == lastPaymentDate) &&
            (identical(other.lastPeriodBalance, lastPeriodBalance) ||
                other.lastPeriodBalance == lastPeriodBalance) &&
            (identical(other.interestRate, interestRate) ||
                other.interestRate == interestRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      collectedAt,
      creditLimit,
      cuttingDate,
      nextPaymentDate,
      minimumPayment,
      monthlyPayment,
      noInterestPayment,
      lastPaymentDate,
      lastPeriodBalance,
      interestRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditEntityImplCopyWith<_$CreditEntityImpl> get copyWith =>
      __$$CreditEntityImplCopyWithImpl<_$CreditEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditEntityImplToJson(
      this,
    );
  }
}

abstract class _CreditEntity extends CreditEntity {
  const factory _CreditEntity(
          {@JsonKey(name: 'collected_at') final String collectedAt,
          @JsonKey(name: 'credit_limit') final int creditLimit,
          @JsonKey(name: 'cutting_date') final String cuttingDate,
          @JsonKey(name: 'next_payment_date') final String nextPaymentDate,
          @JsonKey(name: 'minimum_payment') final int minimumPayment,
          @JsonKey(name: 'monthly_payment') final int monthlyPayment,
          @JsonKey(name: 'no_interest_payment') final int noInterestPayment,
          @JsonKey(name: 'last_payment_date') final String lastPaymentDate,
          @JsonKey(name: 'last_period_balance') final int lastPeriodBalance,
          @JsonKey(name: 'interest_rate') final int interestRate}) =
      _$CreditEntityImpl;
  const _CreditEntity._() : super._();

  factory _CreditEntity.fromJson(Map<String, dynamic> json) =
      _$CreditEntityImpl.fromJson;

  @override
  @JsonKey(name: 'collected_at')
  String get collectedAt;
  @override
  @JsonKey(name: 'credit_limit')
  int get creditLimit;
  @override
  @JsonKey(name: 'cutting_date')
  String get cuttingDate;
  @override
  @JsonKey(name: 'next_payment_date')
  String get nextPaymentDate;
  @override
  @JsonKey(name: 'minimum_payment')
  int get minimumPayment;
  @override
  @JsonKey(name: 'monthly_payment')
  int get monthlyPayment;
  @override
  @JsonKey(name: 'no_interest_payment')
  int get noInterestPayment;
  @override
  @JsonKey(name: 'last_payment_date')
  String get lastPaymentDate;
  @override
  @JsonKey(name: 'last_period_balance')
  int get lastPeriodBalance;
  @override
  @JsonKey(name: 'interest_rate')
  int get interestRate;
  @override
  @JsonKey(ignore: true)
  _$$CreditEntityImplCopyWith<_$CreditEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
