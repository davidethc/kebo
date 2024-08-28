// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionEntity _$TransactionEntityFromJson(Map<String, dynamic> json) {
  return _TransactionEntity.fromJson(json);
}

/// @nodoc
mixin _$TransactionEntity {
  String get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get subcategory => throw _privateConstructorUsedError;
  MerchantEntity? get merchant => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'collected_at')
  String get collectedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_date')
  String get valueDate => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get institutionName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionEntityCopyWith<TransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEntityCopyWith<$Res> {
  factory $TransactionEntityCopyWith(
          TransactionEntity value, $Res Function(TransactionEntity) then) =
      _$TransactionEntityCopyWithImpl<$Res, TransactionEntity>;
  @useResult
  $Res call(
      {String id,
      String category,
      String subcategory,
      MerchantEntity? merchant,
      String type,
      double amount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'collected_at') String collectedAt,
      @JsonKey(name: 'value_date') String valueDate,
      String currency,
      String description,
      String status,
      String institutionName});

  $MerchantEntityCopyWith<$Res>? get merchant;
}

/// @nodoc
class _$TransactionEntityCopyWithImpl<$Res, $Val extends TransactionEntity>
    implements $TransactionEntityCopyWith<$Res> {
  _$TransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? subcategory = null,
    Object? merchant = freezed,
    Object? type = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? collectedAt = null,
    Object? valueDate = null,
    Object? currency = null,
    Object? description = null,
    Object? status = null,
    Object? institutionName = null,
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
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: freezed == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantEntity?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      collectedAt: null == collectedAt
          ? _value.collectedAt
          : collectedAt // ignore: cast_nullable_to_non_nullable
              as String,
      valueDate: null == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      institutionName: null == institutionName
          ? _value.institutionName
          : institutionName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MerchantEntityCopyWith<$Res>? get merchant {
    if (_value.merchant == null) {
      return null;
    }

    return $MerchantEntityCopyWith<$Res>(_value.merchant!, (value) {
      return _then(_value.copyWith(merchant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionEntityImplCopyWith<$Res>
    implements $TransactionEntityCopyWith<$Res> {
  factory _$$TransactionEntityImplCopyWith(_$TransactionEntityImpl value,
          $Res Function(_$TransactionEntityImpl) then) =
      __$$TransactionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String category,
      String subcategory,
      MerchantEntity? merchant,
      String type,
      double amount,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'collected_at') String collectedAt,
      @JsonKey(name: 'value_date') String valueDate,
      String currency,
      String description,
      String status,
      String institutionName});

  @override
  $MerchantEntityCopyWith<$Res>? get merchant;
}

/// @nodoc
class __$$TransactionEntityImplCopyWithImpl<$Res>
    extends _$TransactionEntityCopyWithImpl<$Res, _$TransactionEntityImpl>
    implements _$$TransactionEntityImplCopyWith<$Res> {
  __$$TransactionEntityImplCopyWithImpl(_$TransactionEntityImpl _value,
      $Res Function(_$TransactionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? subcategory = null,
    Object? merchant = freezed,
    Object? type = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? collectedAt = null,
    Object? valueDate = null,
    Object? currency = null,
    Object? description = null,
    Object? status = null,
    Object? institutionName = null,
  }) {
    return _then(_$TransactionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: freezed == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantEntity?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      collectedAt: null == collectedAt
          ? _value.collectedAt
          : collectedAt // ignore: cast_nullable_to_non_nullable
              as String,
      valueDate: null == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      institutionName: null == institutionName
          ? _value.institutionName
          : institutionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionEntityImpl extends _TransactionEntity {
  const _$TransactionEntityImpl(
      {this.id = '',
      this.category = '',
      this.subcategory = '',
      this.merchant,
      this.type = '',
      this.amount = 0.0,
      @JsonKey(name: 'created_at') this.createdAt = '',
      @JsonKey(name: 'collected_at') this.collectedAt = '',
      @JsonKey(name: 'value_date') this.valueDate = '',
      this.currency = '',
      this.description = '',
      this.status = '',
      this.institutionName = ''})
      : super._();

  factory _$TransactionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionEntityImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final String subcategory;
  @override
  final MerchantEntity? merchant;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'collected_at')
  final String collectedAt;
  @override
  @JsonKey(name: 'value_date')
  final String valueDate;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String institutionName;

  @override
  String toString() {
    return 'TransactionEntity(id: $id, category: $category, subcategory: $subcategory, merchant: $merchant, type: $type, amount: $amount, createdAt: $createdAt, collectedAt: $collectedAt, valueDate: $valueDate, currency: $currency, description: $description, status: $status, institutionName: $institutionName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.collectedAt, collectedAt) ||
                other.collectedAt == collectedAt) &&
            (identical(other.valueDate, valueDate) ||
                other.valueDate == valueDate) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.institutionName, institutionName) ||
                other.institutionName == institutionName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      category,
      subcategory,
      merchant,
      type,
      amount,
      createdAt,
      collectedAt,
      valueDate,
      currency,
      description,
      status,
      institutionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionEntityImplCopyWith<_$TransactionEntityImpl> get copyWith =>
      __$$TransactionEntityImplCopyWithImpl<_$TransactionEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionEntityImplToJson(
      this,
    );
  }
}

abstract class _TransactionEntity extends TransactionEntity {
  const factory _TransactionEntity(
      {final String id,
      final String category,
      final String subcategory,
      final MerchantEntity? merchant,
      final String type,
      final double amount,
      @JsonKey(name: 'created_at') final String createdAt,
      @JsonKey(name: 'collected_at') final String collectedAt,
      @JsonKey(name: 'value_date') final String valueDate,
      final String currency,
      final String description,
      final String status,
      final String institutionName}) = _$TransactionEntityImpl;
  const _TransactionEntity._() : super._();

  factory _TransactionEntity.fromJson(Map<String, dynamic> json) =
      _$TransactionEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get category;
  @override
  String get subcategory;
  @override
  MerchantEntity? get merchant;
  @override
  String get type;
  @override
  double get amount;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'collected_at')
  String get collectedAt;
  @override
  @JsonKey(name: 'value_date')
  String get valueDate;
  @override
  String get currency;
  @override
  String get description;
  @override
  String get status;
  @override
  String get institutionName;
  @override
  @JsonKey(ignore: true)
  _$$TransactionEntityImplCopyWith<_$TransactionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
