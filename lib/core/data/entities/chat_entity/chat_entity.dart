// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_entity.freezed.dart';
part 'chat_entity.g.dart';

@freezed
class ChatEntity with _$ChatEntity {
  const ChatEntity._();

  const factory ChatEntity({
    @Default(0) int id,
    @Default('') String message,
    @Default(false) bool isMe,
  }) = _ChatEntity;

  factory ChatEntity.fromJson(Map<String, Object?> json) =>
      _$ChatEntityFromJson(json);
}
