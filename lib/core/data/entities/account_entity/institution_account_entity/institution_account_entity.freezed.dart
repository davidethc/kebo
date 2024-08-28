// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'institution_account_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstitutionAccountEntity _$InstitutionAccountEntityFromJson(
    Map<String, dynamic> json) {
  return _InstitutionAccountEntity.fromJson(json);
}

/// @nodoc
mixin _$InstitutionAccountEntity {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstitutionAccountEntityCopyWith<InstitutionAccountEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstitutionAccountEntityCopyWith<$Res> {
  factory $InstitutionAccountEntityCopyWith(InstitutionAccountEntity value,
          $Res Function(InstitutionAccountEntity) then) =
      _$InstitutionAccountEntityCopyWithImpl<$Res, InstitutionAccountEntity>;
  @useResult
  $Res call({String name, String type});
}

/// @nodoc
class _$InstitutionAccountEntityCopyWithImpl<$Res,
        $Val extends InstitutionAccountEntity>
    implements $InstitutionAccountEntityCopyWith<$Res> {
  _$InstitutionAccountEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstitutionAccountEntityImplCopyWith<$Res>
    implements $InstitutionAccountEntityCopyWith<$Res> {
  factory _$$InstitutionAccountEntityImplCopyWith(
          _$InstitutionAccountEntityImpl value,
          $Res Function(_$InstitutionAccountEntityImpl) then) =
      __$$InstitutionAccountEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String type});
}

/// @nodoc
class __$$InstitutionAccountEntityImplCopyWithImpl<$Res>
    extends _$InstitutionAccountEntityCopyWithImpl<$Res,
        _$InstitutionAccountEntityImpl>
    implements _$$InstitutionAccountEntityImplCopyWith<$Res> {
  __$$InstitutionAccountEntityImplCopyWithImpl(
      _$InstitutionAccountEntityImpl _value,
      $Res Function(_$InstitutionAccountEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$InstitutionAccountEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstitutionAccountEntityImpl extends _InstitutionAccountEntity {
  const _$InstitutionAccountEntityImpl({this.name = '', this.type = ''})
      : super._();

  factory _$InstitutionAccountEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstitutionAccountEntityImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'InstitutionAccountEntity(name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstitutionAccountEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InstitutionAccountEntityImplCopyWith<_$InstitutionAccountEntityImpl>
      get copyWith => __$$InstitutionAccountEntityImplCopyWithImpl<
          _$InstitutionAccountEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstitutionAccountEntityImplToJson(
      this,
    );
  }
}

abstract class _InstitutionAccountEntity extends InstitutionAccountEntity {
  const factory _InstitutionAccountEntity(
      {final String name, final String type}) = _$InstitutionAccountEntityImpl;
  const _InstitutionAccountEntity._() : super._();

  factory _InstitutionAccountEntity.fromJson(Map<String, dynamic> json) =
      _$InstitutionAccountEntityImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$InstitutionAccountEntityImplCopyWith<_$InstitutionAccountEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
