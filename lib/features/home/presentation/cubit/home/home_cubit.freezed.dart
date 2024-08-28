// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingEvent => throw _privateConstructorUsedError;
  List<EventEntity> get events => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  Tuple2<int, int> get savings => throw _privateConstructorUsedError;
  Tuple2<int, int> get goals => throw _privateConstructorUsedError;
  DashboardLineEntity? get dataIncome => throw _privateConstructorUsedError;
  DashboardLineEntity? get dataExpense => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isLoading,
      bool isLoadingEvent,
      List<EventEntity> events,
      double balance,
      int score,
      int currentIndex,
      Tuple2<int, int> savings,
      Tuple2<int, int> goals,
      DashboardLineEntity? dataIncome,
      DashboardLineEntity? dataExpense});

  $AppFailureCopyWith<$Res>? get failure;
  $DashboardLineEntityCopyWith<$Res>? get dataIncome;
  $DashboardLineEntityCopyWith<$Res>? get dataExpense;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isLoadingEvent = null,
    Object? events = null,
    Object? balance = null,
    Object? score = null,
    Object? currentIndex = null,
    Object? savings = null,
    Object? goals = null,
    Object? dataIncome = freezed,
    Object? dataExpense = freezed,
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
      isLoadingEvent: null == isLoadingEvent
          ? _value.isLoadingEvent
          : isLoadingEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      savings: null == savings
          ? _value.savings
          : savings // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
      dataIncome: freezed == dataIncome
          ? _value.dataIncome
          : dataIncome // ignore: cast_nullable_to_non_nullable
              as DashboardLineEntity?,
      dataExpense: freezed == dataExpense
          ? _value.dataExpense
          : dataExpense // ignore: cast_nullable_to_non_nullable
              as DashboardLineEntity?,
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

  @override
  @pragma('vm:prefer-inline')
  $DashboardLineEntityCopyWith<$Res>? get dataIncome {
    if (_value.dataIncome == null) {
      return null;
    }

    return $DashboardLineEntityCopyWith<$Res>(_value.dataIncome!, (value) {
      return _then(_value.copyWith(dataIncome: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DashboardLineEntityCopyWith<$Res>? get dataExpense {
    if (_value.dataExpense == null) {
      return null;
    }

    return $DashboardLineEntityCopyWith<$Res>(_value.dataExpense!, (value) {
      return _then(_value.copyWith(dataExpense: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isLoading,
      bool isLoadingEvent,
      List<EventEntity> events,
      double balance,
      int score,
      int currentIndex,
      Tuple2<int, int> savings,
      Tuple2<int, int> goals,
      DashboardLineEntity? dataIncome,
      DashboardLineEntity? dataExpense});

  @override
  $AppFailureCopyWith<$Res>? get failure;
  @override
  $DashboardLineEntityCopyWith<$Res>? get dataIncome;
  @override
  $DashboardLineEntityCopyWith<$Res>? get dataExpense;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isLoadingEvent = null,
    Object? events = null,
    Object? balance = null,
    Object? score = null,
    Object? currentIndex = null,
    Object? savings = null,
    Object? goals = null,
    Object? dataIncome = freezed,
    Object? dataExpense = freezed,
  }) {
    return _then(_$HomeStateImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingEvent: null == isLoadingEvent
          ? _value.isLoadingEvent
          : isLoadingEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      savings: null == savings
          ? _value.savings
          : savings // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
      dataIncome: freezed == dataIncome
          ? _value.dataIncome
          : dataIncome // ignore: cast_nullable_to_non_nullable
              as DashboardLineEntity?,
      dataExpense: freezed == dataExpense
          ? _value.dataExpense
          : dataExpense // ignore: cast_nullable_to_non_nullable
              as DashboardLineEntity?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.failure,
      this.isLoading = false,
      this.isLoadingEvent = false,
      final List<EventEntity> events = const [],
      this.balance = 0.0,
      this.score = 0,
      this.currentIndex = 0,
      this.savings = const Tuple2(0, 0),
      this.goals = const Tuple2(0, 0),
      this.dataIncome,
      this.dataExpense})
      : _events = events,
        super._();

  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingEvent;
  final List<EventEntity> _events;
  @override
  @JsonKey()
  List<EventEntity> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final Tuple2<int, int> savings;
  @override
  @JsonKey()
  final Tuple2<int, int> goals;
  @override
  final DashboardLineEntity? dataIncome;
  @override
  final DashboardLineEntity? dataExpense;

  @override
  String toString() {
    return 'HomeState(failure: $failure, isLoading: $isLoading, isLoadingEvent: $isLoadingEvent, events: $events, balance: $balance, score: $score, currentIndex: $currentIndex, savings: $savings, goals: $goals, dataIncome: $dataIncome, dataExpense: $dataExpense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingEvent, isLoadingEvent) ||
                other.isLoadingEvent == isLoadingEvent) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.savings, savings) || other.savings == savings) &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.dataIncome, dataIncome) ||
                other.dataIncome == dataIncome) &&
            (identical(other.dataExpense, dataExpense) ||
                other.dataExpense == dataExpense));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failure,
      isLoading,
      isLoadingEvent,
      const DeepCollectionEquality().hash(_events),
      balance,
      score,
      currentIndex,
      savings,
      goals,
      dataIncome,
      dataExpense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final AppFailure? failure,
      final bool isLoading,
      final bool isLoadingEvent,
      final List<EventEntity> events,
      final double balance,
      final int score,
      final int currentIndex,
      final Tuple2<int, int> savings,
      final Tuple2<int, int> goals,
      final DashboardLineEntity? dataIncome,
      final DashboardLineEntity? dataExpense}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  AppFailure? get failure;
  @override
  bool get isLoading;
  @override
  bool get isLoadingEvent;
  @override
  List<EventEntity> get events;
  @override
  double get balance;
  @override
  int get score;
  @override
  int get currentIndex;
  @override
  Tuple2<int, int> get savings;
  @override
  Tuple2<int, int> get goals;
  @override
  DashboardLineEntity? get dataIncome;
  @override
  DashboardLineEntity? get dataExpense;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
