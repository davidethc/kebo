// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytic_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnalyticState {
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingSuggest => throw _privateConstructorUsedError;
  List<AnalyticEntity> get analytics => throw _privateConstructorUsedError;
  List<AnalyticEntity> get suggestions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalyticStateCopyWith<AnalyticState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticStateCopyWith<$Res> {
  factory $AnalyticStateCopyWith(
          AnalyticState value, $Res Function(AnalyticState) then) =
      _$AnalyticStateCopyWithImpl<$Res, AnalyticState>;
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isLoading,
      bool isLoadingSuggest,
      List<AnalyticEntity> analytics,
      List<AnalyticEntity> suggestions});

  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$AnalyticStateCopyWithImpl<$Res, $Val extends AnalyticState>
    implements $AnalyticStateCopyWith<$Res> {
  _$AnalyticStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isLoadingSuggest = null,
    Object? analytics = null,
    Object? suggestions = null,
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
      isLoadingSuggest: null == isLoadingSuggest
          ? _value.isLoadingSuggest
          : isLoadingSuggest // ignore: cast_nullable_to_non_nullable
              as bool,
      analytics: null == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as List<AnalyticEntity>,
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<AnalyticEntity>,
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
abstract class _$$AnalyticStateImplCopyWith<$Res>
    implements $AnalyticStateCopyWith<$Res> {
  factory _$$AnalyticStateImplCopyWith(
          _$AnalyticStateImpl value, $Res Function(_$AnalyticStateImpl) then) =
      __$$AnalyticStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isLoading,
      bool isLoadingSuggest,
      List<AnalyticEntity> analytics,
      List<AnalyticEntity> suggestions});

  @override
  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$AnalyticStateImplCopyWithImpl<$Res>
    extends _$AnalyticStateCopyWithImpl<$Res, _$AnalyticStateImpl>
    implements _$$AnalyticStateImplCopyWith<$Res> {
  __$$AnalyticStateImplCopyWithImpl(
      _$AnalyticStateImpl _value, $Res Function(_$AnalyticStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isLoadingSuggest = null,
    Object? analytics = null,
    Object? suggestions = null,
  }) {
    return _then(_$AnalyticStateImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSuggest: null == isLoadingSuggest
          ? _value.isLoadingSuggest
          : isLoadingSuggest // ignore: cast_nullable_to_non_nullable
              as bool,
      analytics: null == analytics
          ? _value._analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as List<AnalyticEntity>,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<AnalyticEntity>,
    ));
  }
}

/// @nodoc

class _$AnalyticStateImpl extends _AnalyticState {
  const _$AnalyticStateImpl(
      {this.failure,
      this.isLoading = false,
      this.isLoadingSuggest = false,
      final List<AnalyticEntity> analytics = const [],
      final List<AnalyticEntity> suggestions = const []})
      : _analytics = analytics,
        _suggestions = suggestions,
        super._();

  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingSuggest;
  final List<AnalyticEntity> _analytics;
  @override
  @JsonKey()
  List<AnalyticEntity> get analytics {
    if (_analytics is EqualUnmodifiableListView) return _analytics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analytics);
  }

  final List<AnalyticEntity> _suggestions;
  @override
  @JsonKey()
  List<AnalyticEntity> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'AnalyticState(failure: $failure, isLoading: $isLoading, isLoadingSuggest: $isLoadingSuggest, analytics: $analytics, suggestions: $suggestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticStateImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingSuggest, isLoadingSuggest) ||
                other.isLoadingSuggest == isLoadingSuggest) &&
            const DeepCollectionEquality()
                .equals(other._analytics, _analytics) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failure,
      isLoading,
      isLoadingSuggest,
      const DeepCollectionEquality().hash(_analytics),
      const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticStateImplCopyWith<_$AnalyticStateImpl> get copyWith =>
      __$$AnalyticStateImplCopyWithImpl<_$AnalyticStateImpl>(this, _$identity);
}

abstract class _AnalyticState extends AnalyticState {
  const factory _AnalyticState(
      {final AppFailure? failure,
      final bool isLoading,
      final bool isLoadingSuggest,
      final List<AnalyticEntity> analytics,
      final List<AnalyticEntity> suggestions}) = _$AnalyticStateImpl;
  const _AnalyticState._() : super._();

  @override
  AppFailure? get failure;
  @override
  bool get isLoading;
  @override
  bool get isLoadingSuggest;
  @override
  List<AnalyticEntity> get analytics;
  @override
  List<AnalyticEntity> get suggestions;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticStateImplCopyWith<_$AnalyticStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
