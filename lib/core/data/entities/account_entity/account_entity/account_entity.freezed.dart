// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountEntity _$AccountEntityFromJson(Map<String, dynamic> json) {
  return _AccountEntity.fromJson(json);
}

/// @nodoc
mixin _$AccountEntity {
  String get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_data')
  CreditEntity? get creditData => throw _privateConstructorUsedError;
  @JsonKey(name: 'loan_data')
  LoanEntity? get loanData => throw _privateConstructorUsedError;
  InstitutionAccountEntity? get institution =>
      throw _privateConstructorUsedError;
  BalanceEntity? get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountEntityCopyWith<AccountEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEntityCopyWith<$Res> {
  factory $AccountEntityCopyWith(
          AccountEntity value, $Res Function(AccountEntity) then) =
      _$AccountEntityCopyWithImpl<$Res, AccountEntity>;
  @useResult
  $Res call(
      {String id,
      String category,
      String name,
      String number,
      @JsonKey(name: 'credit_data') CreditEntity? creditData,
      @JsonKey(name: 'loan_data') LoanEntity? loanData,
      InstitutionAccountEntity? institution,
      BalanceEntity? balance});

  $CreditEntityCopyWith<$Res>? get creditData;
  $LoanEntityCopyWith<$Res>? get loanData;
  $InstitutionAccountEntityCopyWith<$Res>? get institution;
  $BalanceEntityCopyWith<$Res>? get balance;
}

/// @nodoc
class _$AccountEntityCopyWithImpl<$Res, $Val extends AccountEntity>
    implements $AccountEntityCopyWith<$Res> {
  _$AccountEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? name = null,
    Object? number = null,
    Object? creditData = freezed,
    Object? loanData = freezed,
    Object? institution = freezed,
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      creditData: freezed == creditData
          ? _value.creditData
          : creditData // ignore: cast_nullable_to_non_nullable
              as CreditEntity?,
      loanData: freezed == loanData
          ? _value.loanData
          : loanData // ignore: cast_nullable_to_non_nullable
              as LoanEntity?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as InstitutionAccountEntity?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BalanceEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditEntityCopyWith<$Res>? get creditData {
    if (_value.creditData == null) {
      return null;
    }

    return $CreditEntityCopyWith<$Res>(_value.creditData!, (value) {
      return _then(_value.copyWith(creditData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoanEntityCopyWith<$Res>? get loanData {
    if (_value.loanData == null) {
      return null;
    }

    return $LoanEntityCopyWith<$Res>(_value.loanData!, (value) {
      return _then(_value.copyWith(loanData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InstitutionAccountEntityCopyWith<$Res>? get institution {
    if (_value.institution == null) {
      return null;
    }

    return $InstitutionAccountEntityCopyWith<$Res>(_value.institution!,
        (value) {
      return _then(_value.copyWith(institution: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BalanceEntityCopyWith<$Res>? get balance {
    if (_value.balance == null) {
      return null;
    }

    return $BalanceEntityCopyWith<$Res>(_value.balance!, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountEntityImplCopyWith<$Res>
    implements $AccountEntityCopyWith<$Res> {
  factory _$$AccountEntityImplCopyWith(
          _$AccountEntityImpl value, $Res Function(_$AccountEntityImpl) then) =
      __$$AccountEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String category,
      String name,
      String number,
      @JsonKey(name: 'credit_data') CreditEntity? creditData,
      @JsonKey(name: 'loan_data') LoanEntity? loanData,
      InstitutionAccountEntity? institution,
      BalanceEntity? balance});

  @override
  $CreditEntityCopyWith<$Res>? get creditData;
  @override
  $LoanEntityCopyWith<$Res>? get loanData;
  @override
  $InstitutionAccountEntityCopyWith<$Res>? get institution;
  @override
  $BalanceEntityCopyWith<$Res>? get balance;
}

/// @nodoc
class __$$AccountEntityImplCopyWithImpl<$Res>
    extends _$AccountEntityCopyWithImpl<$Res, _$AccountEntityImpl>
    implements _$$AccountEntityImplCopyWith<$Res> {
  __$$AccountEntityImplCopyWithImpl(
      _$AccountEntityImpl _value, $Res Function(_$AccountEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? name = null,
    Object? number = null,
    Object? creditData = freezed,
    Object? loanData = freezed,
    Object? institution = freezed,
    Object? balance = freezed,
  }) {
    return _then(_$AccountEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      creditData: freezed == creditData
          ? _value.creditData
          : creditData // ignore: cast_nullable_to_non_nullable
              as CreditEntity?,
      loanData: freezed == loanData
          ? _value.loanData
          : loanData // ignore: cast_nullable_to_non_nullable
              as LoanEntity?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as InstitutionAccountEntity?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BalanceEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountEntityImpl extends _AccountEntity {
  const _$AccountEntityImpl(
      {this.id = '',
      this.category = '',
      this.name = '',
      this.number = '',
      @JsonKey(name: 'credit_data') this.creditData,
      @JsonKey(name: 'loan_data') this.loanData,
      this.institution,
      this.balance})
      : super._();

  factory _$AccountEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountEntityImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String number;
  @override
  @JsonKey(name: 'credit_data')
  final CreditEntity? creditData;
  @override
  @JsonKey(name: 'loan_data')
  final LoanEntity? loanData;
  @override
  final InstitutionAccountEntity? institution;
  @override
  final BalanceEntity? balance;

  @override
  String toString() {
    return 'AccountEntity(id: $id, category: $category, name: $name, number: $number, creditData: $creditData, loanData: $loanData, institution: $institution, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.creditData, creditData) ||
                other.creditData == creditData) &&
            (identical(other.loanData, loanData) ||
                other.loanData == loanData) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, category, name, number,
      creditData, loanData, institution, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountEntityImplCopyWith<_$AccountEntityImpl> get copyWith =>
      __$$AccountEntityImplCopyWithImpl<_$AccountEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountEntityImplToJson(
      this,
    );
  }
}

abstract class _AccountEntity extends AccountEntity {
  const factory _AccountEntity(
      {final String id,
      final String category,
      final String name,
      final String number,
      @JsonKey(name: 'credit_data') final CreditEntity? creditData,
      @JsonKey(name: 'loan_data') final LoanEntity? loanData,
      final InstitutionAccountEntity? institution,
      final BalanceEntity? balance}) = _$AccountEntityImpl;
  const _AccountEntity._() : super._();

  factory _AccountEntity.fromJson(Map<String, dynamic> json) =
      _$AccountEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get category;
  @override
  String get name;
  @override
  String get number;
  @override
  @JsonKey(name: 'credit_data')
  CreditEntity? get creditData;
  @override
  @JsonKey(name: 'loan_data')
  LoanEntity? get loanData;
  @override
  InstitutionAccountEntity? get institution;
  @override
  BalanceEntity? get balance;
  @override
  @JsonKey(ignore: true)
  _$$AccountEntityImplCopyWith<_$AccountEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
