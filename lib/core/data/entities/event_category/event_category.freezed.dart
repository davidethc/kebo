// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventEntity _$EventEntityFromJson(Map<String, dynamic> json) {
  return _EventEntity.fromJson(json);
}

/// @nodoc
mixin _$EventEntity {
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get thumnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventEntityCopyWith<EventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEntityCopyWith<$Res> {
  factory $EventEntityCopyWith(
          EventEntity value, $Res Function(EventEntity) then) =
      _$EventEntityCopyWithImpl<$Res, EventEntity>;
  @useResult
  $Res call({String url, String title, String description, String thumnail});
}

/// @nodoc
class _$EventEntityCopyWithImpl<$Res, $Val extends EventEntity>
    implements $EventEntityCopyWith<$Res> {
  _$EventEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? description = null,
    Object? thumnail = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: null == thumnail
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventEntityImplCopyWith<$Res>
    implements $EventEntityCopyWith<$Res> {
  factory _$$EventEntityImplCopyWith(
          _$EventEntityImpl value, $Res Function(_$EventEntityImpl) then) =
      __$$EventEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String title, String description, String thumnail});
}

/// @nodoc
class __$$EventEntityImplCopyWithImpl<$Res>
    extends _$EventEntityCopyWithImpl<$Res, _$EventEntityImpl>
    implements _$$EventEntityImplCopyWith<$Res> {
  __$$EventEntityImplCopyWithImpl(
      _$EventEntityImpl _value, $Res Function(_$EventEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? description = null,
    Object? thumnail = null,
  }) {
    return _then(_$EventEntityImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: null == thumnail
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventEntityImpl extends _EventEntity {
  const _$EventEntityImpl(
      {this.url = '',
      this.title = '',
      this.description = '',
      this.thumnail = ''})
      : super._();

  factory _$EventEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventEntityImplFromJson(json);

  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String thumnail;

  @override
  String toString() {
    return 'EventEntity(url: $url, title: $title, description: $description, thumnail: $thumnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventEntityImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumnail, thumnail) ||
                other.thumnail == thumnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, title, description, thumnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventEntityImplCopyWith<_$EventEntityImpl> get copyWith =>
      __$$EventEntityImplCopyWithImpl<_$EventEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventEntityImplToJson(
      this,
    );
  }
}

abstract class _EventEntity extends EventEntity {
  const factory _EventEntity(
      {final String url,
      final String title,
      final String description,
      final String thumnail}) = _$EventEntityImpl;
  const _EventEntity._() : super._();

  factory _EventEntity.fromJson(Map<String, dynamic> json) =
      _$EventEntityImpl.fromJson;

  @override
  String get url;
  @override
  String get title;
  @override
  String get description;
  @override
  String get thumnail;
  @override
  @JsonKey(ignore: true)
  _$$EventEntityImplCopyWith<_$EventEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
