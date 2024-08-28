// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoanEntity _$LoanEntityFromJson(Map<String, dynamic> json) {
  return _LoanEntity.fromJson(json);
}

/// @nodoc
mixin _$LoanEntity {
  @JsonKey(name: 'collected_at')
  String get collectedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_limit')
  int get creditLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanEntityCopyWith<LoanEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanEntityCopyWith<$Res> {
  factory $LoanEntityCopyWith(
          LoanEntity value, $Res Function(LoanEntity) then) =
      _$LoanEntityCopyWithImpl<$Res, LoanEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'collected_at') String collectedAt,
      @JsonKey(name: 'credit_limit') int creditLimit});
}

/// @nodoc
class _$LoanEntityCopyWithImpl<$Res, $Val extends LoanEntity>
    implements $LoanEntityCopyWith<$Res> {
  _$LoanEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectedAt = null,
    Object? creditLimit = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanEntityImplCopyWith<$Res>
    implements $LoanEntityCopyWith<$Res> {
  factory _$$LoanEntityImplCopyWith(
          _$LoanEntityImpl value, $Res Function(_$LoanEntityImpl) then) =
      __$$LoanEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'collected_at') String collectedAt,
      @JsonKey(name: 'credit_limit') int creditLimit});
}

/// @nodoc
class __$$LoanEntityImplCopyWithImpl<$Res>
    extends _$LoanEntityCopyWithImpl<$Res, _$LoanEntityImpl>
    implements _$$LoanEntityImplCopyWith<$Res> {
  __$$LoanEntityImplCopyWithImpl(
      _$LoanEntityImpl _value, $Res Function(_$LoanEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectedAt = null,
    Object? creditLimit = null,
  }) {
    return _then(_$LoanEntityImpl(
      collectedAt: null == collectedAt
          ? _value.collectedAt
          : collectedAt // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: null == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanEntityImpl extends _LoanEntity {
  const _$LoanEntityImpl(
      {@JsonKey(name: 'collected_at') this.collectedAt = '',
      @JsonKey(name: 'credit_limit') this.creditLimit = 0})
      : super._();

  factory _$LoanEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanEntityImplFromJson(json);

  @override
  @JsonKey(name: 'collected_at')
  final String collectedAt;
  @override
  @JsonKey(name: 'credit_limit')
  final int creditLimit;

  @override
  String toString() {
    return 'LoanEntity(collectedAt: $collectedAt, creditLimit: $creditLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanEntityImpl &&
            (identical(other.collectedAt, collectedAt) ||
                other.collectedAt == collectedAt) &&
            (identical(other.creditLimit, creditLimit) ||
                other.creditLimit == creditLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, collectedAt, creditLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanEntityImplCopyWith<_$LoanEntityImpl> get copyWith =>
      __$$LoanEntityImplCopyWithImpl<_$LoanEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanEntityImplToJson(
      this,
    );
  }
}

abstract class _LoanEntity extends LoanEntity {
  const factory _LoanEntity(
      {@JsonKey(name: 'collected_at') final String collectedAt,
      @JsonKey(name: 'credit_limit') final int creditLimit}) = _$LoanEntityImpl;
  const _LoanEntity._() : super._();

  factory _LoanEntity.fromJson(Map<String, dynamic> json) =
      _$LoanEntityImpl.fromJson;

  @override
  @JsonKey(name: 'collected_at')
  String get collectedAt;
  @override
  @JsonKey(name: 'credit_limit')
  int get creditLimit;
  @override
  @JsonKey(ignore: true)
  _$$LoanEntityImplCopyWith<_$LoanEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
