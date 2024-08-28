// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatEntityImpl _$$ChatEntityImplFromJson(Map<String, dynamic> json) =>
    _$ChatEntityImpl(
      id: json['id'] as int? ?? 0,
      message: json['message'] as String? ?? '',
      isMe: json['isMe'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChatEntityImplToJson(_$ChatEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'isMe': instance.isMe,
    };
