// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subcategory_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubcategoryEntity _$SubcategoryEntityFromJson(Map<String, dynamic> json) {
  return _SubcategoryEntity.fromJson(json);
}

/// @nodoc
mixin _$SubcategoryEntity {
  String get subcategoria => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubcategoryEntityCopyWith<SubcategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryEntityCopyWith<$Res> {
  factory $SubcategoryEntityCopyWith(
          SubcategoryEntity value, $Res Function(SubcategoryEntity) then) =
      _$SubcategoryEntityCopyWithImpl<$Res, SubcategoryEntity>;
  @useResult
  $Res call({String subcategoria});
}

/// @nodoc
class _$SubcategoryEntityCopyWithImpl<$Res, $Val extends SubcategoryEntity>
    implements $SubcategoryEntityCopyWith<$Res> {
  _$SubcategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subcategoria = null,
  }) {
    return _then(_value.copyWith(
      subcategoria: null == subcategoria
          ? _value.subcategoria
          : subcategoria // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubcategoryEntityImplCopyWith<$Res>
    implements $SubcategoryEntityCopyWith<$Res> {
  factory _$$SubcategoryEntityImplCopyWith(_$SubcategoryEntityImpl value,
          $Res Function(_$SubcategoryEntityImpl) then) =
      __$$SubcategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subcategoria});
}

/// @nodoc
class __$$SubcategoryEntityImplCopyWithImpl<$Res>
    extends _$SubcategoryEntityCopyWithImpl<$Res, _$SubcategoryEntityImpl>
    implements _$$SubcategoryEntityImplCopyWith<$Res> {
  __$$SubcategoryEntityImplCopyWithImpl(_$SubcategoryEntityImpl _value,
      $Res Function(_$SubcategoryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subcategoria = null,
  }) {
    return _then(_$SubcategoryEntityImpl(
      subcategoria: null == subcategoria
          ? _value.subcategoria
          : subcategoria // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubcategoryEntityImpl extends _SubcategoryEntity {
  const _$SubcategoryEntityImpl({this.subcategoria = ''}) : super._();

  factory _$SubcategoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubcategoryEntityImplFromJson(json);

  @override
  @JsonKey()
  final String subcategoria;

  @override
  String toString() {
    return 'SubcategoryEntity(subcategoria: $subcategoria)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubcategoryEntityImpl &&
            (identical(other.subcategoria, subcategoria) ||
                other.subcategoria == subcategoria));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subcategoria);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubcategoryEntityImplCopyWith<_$SubcategoryEntityImpl> get copyWith =>
      __$$SubcategoryEntityImplCopyWithImpl<_$SubcategoryEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubcategoryEntityImplToJson(
      this,
    );
  }
}

abstract class _SubcategoryEntity extends SubcategoryEntity {
  const factory _SubcategoryEntity({final String subcategoria}) =
      _$SubcategoryEntityImpl;
  const _SubcategoryEntity._() : super._();

  factory _SubcategoryEntity.fromJson(Map<String, dynamic> json) =
      _$SubcategoryEntityImpl.fromJson;

  @override
  String get subcategoria;
  @override
  @JsonKey(ignore: true)
  _$$SubcategoryEntityImplCopyWith<_$SubcategoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
