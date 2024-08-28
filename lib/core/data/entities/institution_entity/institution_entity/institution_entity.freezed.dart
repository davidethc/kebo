// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'institution_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstitutionEntity _$InstitutionEntityFromJson(Map<String, dynamic> json) {
  return _InstitutionEntity.fromJson(json);
}

/// @nodoc
mixin _$InstitutionEntity {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  List<String> get resources => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_fields')
  List<FormEntity> get formFields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstitutionEntityCopyWith<InstitutionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstitutionEntityCopyWith<$Res> {
  factory $InstitutionEntityCopyWith(
          InstitutionEntity value, $Res Function(InstitutionEntity) then) =
      _$InstitutionEntityCopyWithImpl<$Res, InstitutionEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String code,
      @JsonKey(name: 'display_name') String displayName,
      String logo,
      @JsonKey(name: 'country_code') String countryCode,
      List<String> resources,
      @JsonKey(name: 'form_fields') List<FormEntity> formFields});
}

/// @nodoc
class _$InstitutionEntityCopyWithImpl<$Res, $Val extends InstitutionEntity>
    implements $InstitutionEntityCopyWith<$Res> {
  _$InstitutionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? displayName = null,
    Object? logo = null,
    Object? countryCode = null,
    Object? resources = null,
    Object? formFields = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      formFields: null == formFields
          ? _value.formFields
          : formFields // ignore: cast_nullable_to_non_nullable
              as List<FormEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstitutionEntityImplCopyWith<$Res>
    implements $InstitutionEntityCopyWith<$Res> {
  factory _$$InstitutionEntityImplCopyWith(_$InstitutionEntityImpl value,
          $Res Function(_$InstitutionEntityImpl) then) =
      __$$InstitutionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String code,
      @JsonKey(name: 'display_name') String displayName,
      String logo,
      @JsonKey(name: 'country_code') String countryCode,
      List<String> resources,
      @JsonKey(name: 'form_fields') List<FormEntity> formFields});
}

/// @nodoc
class __$$InstitutionEntityImplCopyWithImpl<$Res>
    extends _$InstitutionEntityCopyWithImpl<$Res, _$InstitutionEntityImpl>
    implements _$$InstitutionEntityImplCopyWith<$Res> {
  __$$InstitutionEntityImplCopyWithImpl(_$InstitutionEntityImpl _value,
      $Res Function(_$InstitutionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? displayName = null,
    Object? logo = null,
    Object? countryCode = null,
    Object? resources = null,
    Object? formFields = null,
  }) {
    return _then(_$InstitutionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      resources: null == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<String>,
      formFields: null == formFields
          ? _value._formFields
          : formFields // ignore: cast_nullable_to_non_nullable
              as List<FormEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstitutionEntityImpl extends _InstitutionEntity {
  const _$InstitutionEntityImpl(
      {@JsonKey(name: '_id') this.id = '',
      this.name = '',
      this.code = '',
      @JsonKey(name: 'display_name') this.displayName = '',
      this.logo = '',
      @JsonKey(name: 'country_code') this.countryCode = '',
      final List<String> resources = const [],
      @JsonKey(name: 'form_fields')
      final List<FormEntity> formFields = const []})
      : _resources = resources,
        _formFields = formFields,
        super._();

  factory _$InstitutionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstitutionEntityImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey()
  final String logo;
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;
  final List<String> _resources;
  @override
  @JsonKey()
  List<String> get resources {
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resources);
  }

  final List<FormEntity> _formFields;
  @override
  @JsonKey(name: 'form_fields')
  List<FormEntity> get formFields {
    if (_formFields is EqualUnmodifiableListView) return _formFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formFields);
  }

  @override
  String toString() {
    return 'InstitutionEntity(id: $id, name: $name, code: $code, displayName: $displayName, logo: $logo, countryCode: $countryCode, resources: $resources, formFields: $formFields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstitutionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources) &&
            const DeepCollectionEquality()
                .equals(other._formFields, _formFields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      code,
      displayName,
      logo,
      countryCode,
      const DeepCollectionEquality().hash(_resources),
      const DeepCollectionEquality().hash(_formFields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InstitutionEntityImplCopyWith<_$InstitutionEntityImpl> get copyWith =>
      __$$InstitutionEntityImplCopyWithImpl<_$InstitutionEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstitutionEntityImplToJson(
      this,
    );
  }
}

abstract class _InstitutionEntity extends InstitutionEntity {
  const factory _InstitutionEntity(
          {@JsonKey(name: '_id') final String id,
          final String name,
          final String code,
          @JsonKey(name: 'display_name') final String displayName,
          final String logo,
          @JsonKey(name: 'country_code') final String countryCode,
          final List<String> resources,
          @JsonKey(name: 'form_fields') final List<FormEntity> formFields}) =
      _$InstitutionEntityImpl;
  const _InstitutionEntity._() : super._();

  factory _InstitutionEntity.fromJson(Map<String, dynamic> json) =
      _$InstitutionEntityImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get code;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  String get logo;
  @override
  @JsonKey(name: 'country_code')
  String get countryCode;
  @override
  List<String> get resources;
  @override
  @JsonKey(name: 'form_fields')
  List<FormEntity> get formFields;
  @override
  @JsonKey(ignore: true)
  _$$InstitutionEntityImplCopyWith<_$InstitutionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
