// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FormEntity _$FormEntityFromJson(Map<String, dynamic> json) {
  return _FormEntity.fromJson(json);
}

/// @nodoc
mixin _$FormEntity {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get validation => throw _privateConstructorUsedError;
  String get placeholder => throw _privateConstructorUsedError;
  List<ValueEntity> get values => throw _privateConstructorUsedError;
  @JsonKey(name: 'validation_message')
  String get validationMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormEntityCopyWith<FormEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormEntityCopyWith<$Res> {
  factory $FormEntityCopyWith(
          FormEntity value, $Res Function(FormEntity) then) =
      _$FormEntityCopyWithImpl<$Res, FormEntity>;
  @useResult
  $Res call(
      {String name,
      String type,
      String label,
      String validation,
      String placeholder,
      List<ValueEntity> values,
      @JsonKey(name: 'validation_message') String validationMessage});
}

/// @nodoc
class _$FormEntityCopyWithImpl<$Res, $Val extends FormEntity>
    implements $FormEntityCopyWith<$Res> {
  _$FormEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? label = null,
    Object? validation = null,
    Object? placeholder = null,
    Object? values = null,
    Object? validationMessage = null,
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
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ValueEntity>,
      validationMessage: null == validationMessage
          ? _value.validationMessage
          : validationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormEntityImplCopyWith<$Res>
    implements $FormEntityCopyWith<$Res> {
  factory _$$FormEntityImplCopyWith(
          _$FormEntityImpl value, $Res Function(_$FormEntityImpl) then) =
      __$$FormEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      String label,
      String validation,
      String placeholder,
      List<ValueEntity> values,
      @JsonKey(name: 'validation_message') String validationMessage});
}

/// @nodoc
class __$$FormEntityImplCopyWithImpl<$Res>
    extends _$FormEntityCopyWithImpl<$Res, _$FormEntityImpl>
    implements _$$FormEntityImplCopyWith<$Res> {
  __$$FormEntityImplCopyWithImpl(
      _$FormEntityImpl _value, $Res Function(_$FormEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? label = null,
    Object? validation = null,
    Object? placeholder = null,
    Object? values = null,
    Object? validationMessage = null,
  }) {
    return _then(_$FormEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ValueEntity>,
      validationMessage: null == validationMessage
          ? _value.validationMessage
          : validationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormEntityImpl extends _FormEntity {
  const _$FormEntityImpl(
      {this.name = '',
      this.type = '',
      this.label = '',
      this.validation = '',
      this.placeholder = '',
      final List<ValueEntity> values = const [],
      @JsonKey(name: 'validation_message') this.validationMessage = ''})
      : _values = values,
        super._();

  factory _$FormEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormEntityImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final String validation;
  @override
  @JsonKey()
  final String placeholder;
  final List<ValueEntity> _values;
  @override
  @JsonKey()
  List<ValueEntity> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  @JsonKey(name: 'validation_message')
  final String validationMessage;

  @override
  String toString() {
    return 'FormEntity(name: $name, type: $type, label: $label, validation: $validation, placeholder: $placeholder, values: $values, validationMessage: $validationMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.validationMessage, validationMessage) ||
                other.validationMessage == validationMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      type,
      label,
      validation,
      placeholder,
      const DeepCollectionEquality().hash(_values),
      validationMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormEntityImplCopyWith<_$FormEntityImpl> get copyWith =>
      __$$FormEntityImplCopyWithImpl<_$FormEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormEntityImplToJson(
      this,
    );
  }
}

abstract class _FormEntity extends FormEntity {
  const factory _FormEntity(
      {final String name,
      final String type,
      final String label,
      final String validation,
      final String placeholder,
      final List<ValueEntity> values,
      @JsonKey(name: 'validation_message')
      final String validationMessage}) = _$FormEntityImpl;
  const _FormEntity._() : super._();

  factory _FormEntity.fromJson(Map<String, dynamic> json) =
      _$FormEntityImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  String get label;
  @override
  String get validation;
  @override
  String get placeholder;
  @override
  List<ValueEntity> get values;
  @override
  @JsonKey(name: 'validation_message')
  String get validationMessage;
  @override
  @JsonKey(ignore: true)
  _$$FormEntityImplCopyWith<_$FormEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
