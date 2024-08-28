// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytic_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnalyticEntity _$AnalyticEntityFromJson(Map<String, dynamic> json) {
  return _AnalyticEntity.fromJson(json);
}

/// @nodoc
mixin _$AnalyticEntity {
  String get id => throw _privateConstructorUsedError;
  int get cant => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticEntityCopyWith<AnalyticEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticEntityCopyWith<$Res> {
  factory $AnalyticEntityCopyWith(
          AnalyticEntity value, $Res Function(AnalyticEntity) then) =
      _$AnalyticEntityCopyWithImpl<$Res, AnalyticEntity>;
  @useResult
  $Res call(
      {String id, int cant, String message, String category, String date});
}

/// @nodoc
class _$AnalyticEntityCopyWithImpl<$Res, $Val extends AnalyticEntity>
    implements $AnalyticEntityCopyWith<$Res> {
  _$AnalyticEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cant = null,
    Object? message = null,
    Object? category = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cant: null == cant
          ? _value.cant
          : cant // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticEntityImplCopyWith<$Res>
    implements $AnalyticEntityCopyWith<$Res> {
  factory _$$AnalyticEntityImplCopyWith(_$AnalyticEntityImpl value,
          $Res Function(_$AnalyticEntityImpl) then) =
      __$$AnalyticEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, int cant, String message, String category, String date});
}

/// @nodoc
class __$$AnalyticEntityImplCopyWithImpl<$Res>
    extends _$AnalyticEntityCopyWithImpl<$Res, _$AnalyticEntityImpl>
    implements _$$AnalyticEntityImplCopyWith<$Res> {
  __$$AnalyticEntityImplCopyWithImpl(
      _$AnalyticEntityImpl _value, $Res Function(_$AnalyticEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cant = null,
    Object? message = null,
    Object? category = null,
    Object? date = null,
  }) {
    return _then(_$AnalyticEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cant: null == cant
          ? _value.cant
          : cant // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticEntityImpl extends _AnalyticEntity {
  const _$AnalyticEntityImpl(
      {this.id = '',
      this.cant = 0,
      this.message = '',
      this.category = '',
      this.date = ''})
      : super._();

  factory _$AnalyticEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticEntityImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final int cant;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final String date;

  @override
  String toString() {
    return 'AnalyticEntity(id: $id, cant: $cant, message: $message, category: $category, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cant, cant) || other.cant == cant) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, cant, message, category, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticEntityImplCopyWith<_$AnalyticEntityImpl> get copyWith =>
      __$$AnalyticEntityImplCopyWithImpl<_$AnalyticEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticEntityImplToJson(
      this,
    );
  }
}

abstract class _AnalyticEntity extends AnalyticEntity {
  const factory _AnalyticEntity(
      {final String id,
      final int cant,
      final String message,
      final String category,
      final String date}) = _$AnalyticEntityImpl;
  const _AnalyticEntity._() : super._();

  factory _AnalyticEntity.fromJson(Map<String, dynamic> json) =
      _$AnalyticEntityImpl.fromJson;

  @override
  String get id;
  @override
  int get cant;
  @override
  String get message;
  @override
  String get category;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticEntityImplCopyWith<_$AnalyticEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
