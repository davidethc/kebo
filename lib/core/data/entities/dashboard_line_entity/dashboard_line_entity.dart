// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_line_entity.freezed.dart';
part 'dashboard_line_entity.g.dart';

@freezed
class DashboardLineEntity with _$DashboardLineEntity {
  const DashboardLineEntity._();

  const factory DashboardLineEntity({
    @Default('') String percent,
    @Default(0) double currentMonth,
    @Default(0) double lastMonth,
  }) = _DashboardLineEntity;

  factory DashboardLineEntity.fromJson(Map<String, Object?> json) =>
      _$DashboardLineEntityFromJson(json);

  bool get isUp => currentMonth > lastMonth;
}
