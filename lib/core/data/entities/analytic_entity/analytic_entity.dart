// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytic_entity.freezed.dart';
part 'analytic_entity.g.dart';

@freezed
class AnalyticEntity with _$AnalyticEntity {
  const AnalyticEntity._();

  const factory AnalyticEntity({
    @Default('') String id,
    @Default(0) int cant,
    @Default('') String message,
    @Default('') String category,
    @Default('') String date,
  }) = _AnalyticEntity;

  factory AnalyticEntity.fromJson(Map<String, Object?> json) =>
      _$AnalyticEntityFromJson(json);
}
