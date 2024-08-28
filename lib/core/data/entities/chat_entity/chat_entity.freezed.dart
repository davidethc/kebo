// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatEntity _$ChatEntityFromJson(Map<String, dynamic> json) {
  return _ChatEntity.fromJson(json);
}

/// @nodoc
mixin _$ChatEntity {
  int get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isMe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatEntityCopyWith<ChatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEntityCopyWith<$Res> {
  factory $ChatEntityCopyWith(
          ChatEntity value, $Res Function(ChatEntity) then) =
      _$ChatEntityCopyWithImpl<$Res, ChatEntity>;
  @useResult
  $Res call({int id, String message, bool isMe});
}

/// @nodoc
class _$ChatEntityCopyWithImpl<$Res, $Val extends ChatEntity>
    implements $ChatEntityCopyWith<$Res> {
  _$ChatEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? isMe = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isMe: null == isMe
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatEntityImplCopyWith<$Res>
    implements $ChatEntityCopyWith<$Res> {
  factory _$$ChatEntityImplCopyWith(
          _$ChatEntityImpl value, $Res Function(_$ChatEntityImpl) then) =
      __$$ChatEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String message, bool isMe});
}

/// @nodoc
class __$$ChatEntityImplCopyWithImpl<$Res>
    extends _$ChatEntityCopyWithImpl<$Res, _$ChatEntityImpl>
    implements _$$ChatEntityImplCopyWith<$Res> {
  __$$ChatEntityImplCopyWithImpl(
      _$ChatEntityImpl _value, $Res Function(_$ChatEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? isMe = null,
  }) {
    return _then(_$ChatEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isMe: null == isMe
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatEntityImpl extends _ChatEntity {
  const _$ChatEntityImpl({this.id = 0, this.message = '', this.isMe = false})
      : super._();

  factory _$ChatEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatEntityImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool isMe;

  @override
  String toString() {
    return 'ChatEntity(id: $id, message: $message, isMe: $isMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isMe, isMe) || other.isMe == isMe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, message, isMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatEntityImplCopyWith<_$ChatEntityImpl> get copyWith =>
      __$$ChatEntityImplCopyWithImpl<_$ChatEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatEntityImplToJson(
      this,
    );
  }
}

abstract class _ChatEntity extends ChatEntity {
  const factory _ChatEntity(
      {final int id, final String message, final bool isMe}) = _$ChatEntityImpl;
  const _ChatEntity._() : super._();

  factory _ChatEntity.fromJson(Map<String, dynamic> json) =
      _$ChatEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get message;
  @override
  bool get isMe;
  @override
  @JsonKey(ignore: true)
  _$$ChatEntityImplCopyWith<_$ChatEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
