// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance_entity.freezed.dart';
part 'balance_entity.g.dart';

@freezed
class BalanceEntity with _$BalanceEntity {
  const BalanceEntity._();

  const factory BalanceEntity({
    @Default(0) double current,
    @Default(0) double available,
  }) = _BalanceEntity;

  factory BalanceEntity.fromJson(Map<String, Object?> json) =>
      _$BalanceEntityFromJson(json);
}
