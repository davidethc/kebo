// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_line_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardLineEntity _$DashboardLineEntityFromJson(Map<String, dynamic> json) {
  return _DashboardLineEntity.fromJson(json);
}

/// @nodoc
mixin _$DashboardLineEntity {
  String get percent => throw _privateConstructorUsedError;
  double get currentMonth => throw _privateConstructorUsedError;
  double get lastMonth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardLineEntityCopyWith<DashboardLineEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardLineEntityCopyWith<$Res> {
  factory $DashboardLineEntityCopyWith(
          DashboardLineEntity value, $Res Function(DashboardLineEntity) then) =
      _$DashboardLineEntityCopyWithImpl<$Res, DashboardLineEntity>;
  @useResult
  $Res call({String percent, double currentMonth, double lastMonth});
}

/// @nodoc
class _$DashboardLineEntityCopyWithImpl<$Res, $Val extends DashboardLineEntity>
    implements $DashboardLineEntityCopyWith<$Res> {
  _$DashboardLineEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
    Object? currentMonth = null,
    Object? lastMonth = null,
  }) {
    return _then(_value.copyWith(
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as String,
      currentMonth: null == currentMonth
          ? _value.currentMonth
          : currentMonth // ignore: cast_nullable_to_non_nullable
              as double,
      lastMonth: null == lastMonth
          ? _value.lastMonth
          : lastMonth // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardLineEntityImplCopyWith<$Res>
    implements $DashboardLineEntityCopyWith<$Res> {
  factory _$$DashboardLineEntityImplCopyWith(_$DashboardLineEntityImpl value,
          $Res Function(_$DashboardLineEntityImpl) then) =
      __$$DashboardLineEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String percent, double currentMonth, double lastMonth});
}

/// @nodoc
class __$$DashboardLineEntityImplCopyWithImpl<$Res>
    extends _$DashboardLineEntityCopyWithImpl<$Res, _$DashboardLineEntityImpl>
    implements _$$DashboardLineEntityImplCopyWith<$Res> {
  __$$DashboardLineEntityImplCopyWithImpl(_$DashboardLineEntityImpl _value,
      $Res Function(_$DashboardLineEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
    Object? currentMonth = null,
    Object? lastMonth = null,
  }) {
    return _then(_$DashboardLineEntityImpl(
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as String,
      currentMonth: null == currentMonth
          ? _value.currentMonth
          : currentMonth // ignore: cast_nullable_to_non_nullable
              as double,
      lastMonth: null == lastMonth
          ? _value.lastMonth
          : lastMonth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardLineEntityImpl extends _DashboardLineEntity {
  const _$DashboardLineEntityImpl(
      {this.percent = '', this.currentMonth = 0, this.lastMonth = 0})
      : super._();

  factory _$DashboardLineEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardLineEntityImplFromJson(json);

  @override
  @JsonKey()
  final String percent;
  @override
  @JsonKey()
  final double currentMonth;
  @override
  @JsonKey()
  final double lastMonth;

  @override
  String toString() {
    return 'DashboardLineEntity(percent: $percent, currentMonth: $currentMonth, lastMonth: $lastMonth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardLineEntityImpl &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.currentMonth, currentMonth) ||
                other.currentMonth == currentMonth) &&
            (identical(other.lastMonth, lastMonth) ||
                other.lastMonth == lastMonth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, percent, currentMonth, lastMonth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardLineEntityImplCopyWith<_$DashboardLineEntityImpl> get copyWith =>
      __$$DashboardLineEntityImplCopyWithImpl<_$DashboardLineEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardLineEntityImplToJson(
      this,
    );
  }
}

abstract class _DashboardLineEntity extends DashboardLineEntity {
  const factory _DashboardLineEntity(
      {final String percent,
      final double currentMonth,
      final double lastMonth}) = _$DashboardLineEntityImpl;
  const _DashboardLineEntity._() : super._();

  factory _DashboardLineEntity.fromJson(Map<String, dynamic> json) =
      _$DashboardLineEntityImpl.fromJson;

  @override
  String get percent;
  @override
  double get currentMonth;
  @override
  double get lastMonth;
  @override
  @JsonKey(ignore: true)
  _$$DashboardLineEntityImplCopyWith<_$DashboardLineEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
