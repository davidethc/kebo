// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryEntity _$CategoryEntityFromJson(Map<String, dynamic> json) {
  return _CategoryEntity.fromJson(json);
}

/// @nodoc
mixin _$CategoryEntity {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  List<SubcategoryEntity> get categoria => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryEntityCopyWith<CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEntityCopyWith<$Res> {
  factory $CategoryEntityCopyWith(
          CategoryEntity value, $Res Function(CategoryEntity) then) =
      _$CategoryEntityCopyWithImpl<$Res, CategoryEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String icon,
      List<SubcategoryEntity> categoria});
}

/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res, $Val extends CategoryEntity>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? categoria = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      categoria: null == categoria
          ? _value.categoria
          : categoria // ignore: cast_nullable_to_non_nullable
              as List<SubcategoryEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryEntityImplCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory _$$CategoryEntityImplCopyWith(_$CategoryEntityImpl value,
          $Res Function(_$CategoryEntityImpl) then) =
      __$$CategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String icon,
      List<SubcategoryEntity> categoria});
}

/// @nodoc
class __$$CategoryEntityImplCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res, _$CategoryEntityImpl>
    implements _$$CategoryEntityImplCopyWith<$Res> {
  __$$CategoryEntityImplCopyWithImpl(
      _$CategoryEntityImpl _value, $Res Function(_$CategoryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? categoria = null,
  }) {
    return _then(_$CategoryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      categoria: null == categoria
          ? _value._categoria
          : categoria // ignore: cast_nullable_to_non_nullable
              as List<SubcategoryEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryEntityImpl extends _CategoryEntity {
  const _$CategoryEntityImpl(
      {@JsonKey(name: '_id') this.id = '',
      this.icon = '',
      final List<SubcategoryEntity> categoria = const []})
      : _categoria = categoria,
        super._();

  factory _$CategoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryEntityImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String icon;
  final List<SubcategoryEntity> _categoria;
  @override
  @JsonKey()
  List<SubcategoryEntity> get categoria {
    if (_categoria is EqualUnmodifiableListView) return _categoria;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoria);
  }

  @override
  String toString() {
    return 'CategoryEntity(id: $id, icon: $icon, categoria: $categoria)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality()
                .equals(other._categoria, _categoria));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, icon, const DeepCollectionEquality().hash(_categoria));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryEntityImplCopyWith<_$CategoryEntityImpl> get copyWith =>
      __$$CategoryEntityImplCopyWithImpl<_$CategoryEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryEntityImplToJson(
      this,
    );
  }
}

abstract class _CategoryEntity extends CategoryEntity {
  const factory _CategoryEntity(
      {@JsonKey(name: '_id') final String id,
      final String icon,
      final List<SubcategoryEntity> categoria}) = _$CategoryEntityImpl;
  const _CategoryEntity._() : super._();

  factory _CategoryEntity.fromJson(Map<String, dynamic> json) =
      _$CategoryEntityImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get icon;
  @override
  List<SubcategoryEntity> get categoria;
  @override
  @JsonKey(ignore: true)
  _$$CategoryEntityImplCopyWith<_$CategoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
