// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ValueEntity _$ValueEntityFromJson(Map<String, dynamic> json) {
  return _ValueEntity.fromJson(json);
}

/// @nodoc
mixin _$ValueEntity {
  String get code => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get validation => throw _privateConstructorUsedError;
  @JsonKey(name: 'validation_message')
  String get validationMessage => throw _privateConstructorUsedError;
  String get placeholder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValueEntityCopyWith<ValueEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueEntityCopyWith<$Res> {
  factory $ValueEntityCopyWith(
          ValueEntity value, $Res Function(ValueEntity) then) =
      _$ValueEntityCopyWithImpl<$Res, ValueEntity>;
  @useResult
  $Res call(
      {String code,
      String label,
      String validation,
      @JsonKey(name: 'validation_message') String validationMessage,
      String placeholder});
}

/// @nodoc
class _$ValueEntityCopyWithImpl<$Res, $Val extends ValueEntity>
    implements $ValueEntityCopyWith<$Res> {
  _$ValueEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? label = null,
    Object? validation = null,
    Object? validationMessage = null,
    Object? placeholder = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as String,
      validationMessage: null == validationMessage
          ? _value.validationMessage
          : validationMessage // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValueEntityImplCopyWith<$Res>
    implements $ValueEntityCopyWith<$Res> {
  factory _$$ValueEntityImplCopyWith(
          _$ValueEntityImpl value, $Res Function(_$ValueEntityImpl) then) =
      __$$ValueEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String label,
      String validation,
      @JsonKey(name: 'validation_message') String validationMessage,
      String placeholder});
}

/// @nodoc
class __$$ValueEntityImplCopyWithImpl<$Res>
    extends _$ValueEntityCopyWithImpl<$Res, _$ValueEntityImpl>
    implements _$$ValueEntityImplCopyWith<$Res> {
  __$$ValueEntityImplCopyWithImpl(
      _$ValueEntityImpl _value, $Res Function(_$ValueEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? label = null,
    Object? validation = null,
    Object? validationMessage = null,
    Object? placeholder = null,
  }) {
    return _then(_$ValueEntityImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as String,
      validationMessage: null == validationMessage
          ? _value.validationMessage
          : validationMessage // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueEntityImpl extends _ValueEntity {
  const _$ValueEntityImpl(
      {this.code = '',
      this.label = '',
      this.validation = '',
      @JsonKey(name: 'validation_message') this.validationMessage = '',
      this.placeholder = ''})
      : super._();

  factory _$ValueEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueEntityImplFromJson(json);

  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final String validation;
  @override
  @JsonKey(name: 'validation_message')
  final String validationMessage;
  @override
  @JsonKey()
  final String placeholder;

  @override
  String toString() {
    return 'ValueEntity(code: $code, label: $label, validation: $validation, validationMessage: $validationMessage, placeholder: $placeholder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.validationMessage, validationMessage) ||
                other.validationMessage == validationMessage) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, label, validation, validationMessage, placeholder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueEntityImplCopyWith<_$ValueEntityImpl> get copyWith =>
      __$$ValueEntityImplCopyWithImpl<_$ValueEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueEntityImplToJson(
      this,
    );
  }
}

abstract class _ValueEntity extends ValueEntity {
  const factory _ValueEntity(
      {final String code,
      final String label,
      final String validation,
      @JsonKey(name: 'validation_message') final String validationMessage,
      final String placeholder}) = _$ValueEntityImpl;
  const _ValueEntity._() : super._();

  factory _ValueEntity.fromJson(Map<String, dynamic> json) =
      _$ValueEntityImpl.fromJson;

  @override
  String get code;
  @override
  String get label;
  @override
  String get validation;
  @override
  @JsonKey(name: 'validation_message')
  String get validationMessage;
  @override
  String get placeholder;
  @override
  @JsonKey(ignore: true)
  _$$ValueEntityImplCopyWith<_$ValueEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
