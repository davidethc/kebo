// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MerchantEntity _$MerchantEntityFromJson(Map<String, dynamic> json) {
  return _MerchantEntity.fromJson(json);
}

/// @nodoc
mixin _$MerchantEntity {
  String get name => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantEntityCopyWith<MerchantEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantEntityCopyWith<$Res> {
  factory $MerchantEntityCopyWith(
          MerchantEntity value, $Res Function(MerchantEntity) then) =
      _$MerchantEntityCopyWithImpl<$Res, MerchantEntity>;
  @useResult
  $Res call({String name, String website, String logo});
}

/// @nodoc
class _$MerchantEntityCopyWithImpl<$Res, $Val extends MerchantEntity>
    implements $MerchantEntityCopyWith<$Res> {
  _$MerchantEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? website = null,
    Object? logo = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MerchantEntityImplCopyWith<$Res>
    implements $MerchantEntityCopyWith<$Res> {
  factory _$$MerchantEntityImplCopyWith(_$MerchantEntityImpl value,
          $Res Function(_$MerchantEntityImpl) then) =
      __$$MerchantEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String website, String logo});
}

/// @nodoc
class __$$MerchantEntityImplCopyWithImpl<$Res>
    extends _$MerchantEntityCopyWithImpl<$Res, _$MerchantEntityImpl>
    implements _$$MerchantEntityImplCopyWith<$Res> {
  __$$MerchantEntityImplCopyWithImpl(
      _$MerchantEntityImpl _value, $Res Function(_$MerchantEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? website = null,
    Object? logo = null,
  }) {
    return _then(_$MerchantEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchantEntityImpl extends _MerchantEntity {
  const _$MerchantEntityImpl(
      {this.name = '', this.website = '', this.logo = ''})
      : super._();

  factory _$MerchantEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantEntityImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String website;
  @override
  @JsonKey()
  final String logo;

  @override
  String toString() {
    return 'MerchantEntity(name: $name, website: $website, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, website, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantEntityImplCopyWith<_$MerchantEntityImpl> get copyWith =>
      __$$MerchantEntityImplCopyWithImpl<_$MerchantEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantEntityImplToJson(
      this,
    );
  }
}

abstract class _MerchantEntity extends MerchantEntity {
  const factory _MerchantEntity(
      {final String name,
      final String website,
      final String logo}) = _$MerchantEntityImpl;
  const _MerchantEntity._() : super._();

  factory _MerchantEntity.fromJson(Map<String, dynamic> json) =
      _$MerchantEntityImpl.fromJson;

  @override
  String get name;
  @override
  String get website;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$MerchantEntityImplCopyWith<_$MerchantEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
