// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_category.freezed.dart';
part 'event_category.g.dart';

@freezed
class EventEntity with _$EventEntity {
  const EventEntity._();

  const factory EventEntity({
    @Default('') String url,
    @Default('') String title,
    @Default('') String description,
    @Default('') String thumnail,
  }) = _EventEntity;

  factory EventEntity.fromJson(Map<String, Object?> json) =>
      _$EventEntityFromJson(json);
}
