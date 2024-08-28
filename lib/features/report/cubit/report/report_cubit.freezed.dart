// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportState {
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingBar => throw _privateConstructorUsedError;
  bool get isLoadingIncome => throw _privateConstructorUsedError;
  List<List<dynamic>> get dataBar => throw _privateConstructorUsedError;
  List<List<dynamic>> get dataLine => throw _privateConstructorUsedError;
  List<List<dynamic>> get dataIncome => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportStateCopyWith<ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res, ReportState>;
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isLoading,
      bool isLoadingBar,
      bool isLoadingIncome,
      List<List<dynamic>> dataBar,
      List<List<dynamic>> dataLine,
      List<List<dynamic>> dataIncome});

  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res, $Val extends ReportState>
    implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isLoadingBar = null,
    Object? isLoadingIncome = null,
    Object? dataBar = null,
    Object? dataLine = null,
    Object? dataIncome = null,
  }) {
    return _then(_value.copyWith(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingBar: null == isLoadingBar
          ? _value.isLoadingBar
          : isLoadingBar // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingIncome: null == isLoadingIncome
          ? _value.isLoadingIncome
          : isLoadingIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      dataBar: null == dataBar
          ? _value.dataBar
          : dataBar // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
      dataLine: null == dataLine
          ? _value.dataLine
          : dataLine // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
      dataIncome: null == dataIncome
          ? _value.dataIncome
          : dataIncome // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $AppFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportStateImplCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$$ReportStateImplCopyWith(
          _$ReportStateImpl value, $Res Function(_$ReportStateImpl) then) =
      __$$ReportStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isLoading,
      bool isLoadingBar,
      bool isLoadingIncome,
      List<List<dynamic>> dataBar,
      List<List<dynamic>> dataLine,
      List<List<dynamic>> dataIncome});

  @override
  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$ReportStateImplCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$ReportStateImpl>
    implements _$$ReportStateImplCopyWith<$Res> {
  __$$ReportStateImplCopyWithImpl(
      _$ReportStateImpl _value, $Res Function(_$ReportStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isLoadingBar = null,
    Object? isLoadingIncome = null,
    Object? dataBar = null,
    Object? dataLine = null,
    Object? dataIncome = null,
  }) {
    return _then(_$ReportStateImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingBar: null == isLoadingBar
          ? _value.isLoadingBar
          : isLoadingBar // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingIncome: null == isLoadingIncome
          ? _value.isLoadingIncome
          : isLoadingIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      dataBar: null == dataBar
          ? _value._dataBar
          : dataBar // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
      dataLine: null == dataLine
          ? _value._dataLine
          : dataLine // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
      dataIncome: null == dataIncome
          ? _value._dataIncome
          : dataIncome // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
    ));
  }
}

/// @nodoc

class _$ReportStateImpl extends _ReportState {
  const _$ReportStateImpl(
      {this.failure,
      this.isLoading = false,
      this.isLoadingBar = false,
      this.isLoadingIncome = false,
      final List<List<dynamic>> dataBar = const [],
      final List<List<dynamic>> dataLine = const [],
      final List<List<dynamic>> dataIncome = const []})
      : _dataBar = dataBar,
        _dataLine = dataLine,
        _dataIncome = dataIncome,
        super._();

  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingBar;
  @override
  @JsonKey()
  final bool isLoadingIncome;
  final List<List<dynamic>> _dataBar;
  @override
  @JsonKey()
  List<List<dynamic>> get dataBar {
    if (_dataBar is EqualUnmodifiableListView) return _dataBar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataBar);
  }

  final List<List<dynamic>> _dataLine;
  @override
  @JsonKey()
  List<List<dynamic>> get dataLine {
    if (_dataLine is EqualUnmodifiableListView) return _dataLine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataLine);
  }

  final List<List<dynamic>> _dataIncome;
  @override
  @JsonKey()
  List<List<dynamic>> get dataIncome {
    if (_dataIncome is EqualUnmodifiableListView) return _dataIncome;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataIncome);
  }

  @override
  String toString() {
    return 'ReportState(failure: $failure, isLoading: $isLoading, isLoadingBar: $isLoadingBar, isLoadingIncome: $isLoadingIncome, dataBar: $dataBar, dataLine: $dataLine, dataIncome: $dataIncome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportStateImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingBar, isLoadingBar) ||
                other.isLoadingBar == isLoadingBar) &&
            (identical(other.isLoadingIncome, isLoadingIncome) ||
                other.isLoadingIncome == isLoadingIncome) &&
            const DeepCollectionEquality().equals(other._dataBar, _dataBar) &&
            const DeepCollectionEquality().equals(other._dataLine, _dataLine) &&
            const DeepCollectionEquality()
                .equals(other._dataIncome, _dataIncome));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failure,
      isLoading,
      isLoadingBar,
      isLoadingIncome,
      const DeepCollectionEquality().hash(_dataBar),
      const DeepCollectionEquality().hash(_dataLine),
      const DeepCollectionEquality().hash(_dataIncome));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportStateImplCopyWith<_$ReportStateImpl> get copyWith =>
      __$$ReportStateImplCopyWithImpl<_$ReportStateImpl>(this, _$identity);
}

abstract class _ReportState extends ReportState {
  const factory _ReportState(
      {final AppFailure? failure,
      final bool isLoading,
      final bool isLoadingBar,
      final bool isLoadingIncome,
      final List<List<dynamic>> dataBar,
      final List<List<dynamic>> dataLine,
      final List<List<dynamic>> dataIncome}) = _$ReportStateImpl;
  const _ReportState._() : super._();

  @override
  AppFailure? get failure;
  @override
  bool get isLoading;
  @override
  bool get isLoadingBar;
  @override
  bool get isLoadingIncome;
  @override
  List<List<dynamic>> get dataBar;
  @override
  List<List<dynamic>> get dataLine;
  @override
  List<List<dynamic>> get dataIncome;
  @override
  @JsonKey(ignore: true)
  _$$ReportStateImplCopyWith<_$ReportStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
