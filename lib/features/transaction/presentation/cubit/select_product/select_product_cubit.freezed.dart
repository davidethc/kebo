// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectProductState {
  List<ProductEntity> get accounts => throw _privateConstructorUsedError;
  List<int> get selected => throw _privateConstructorUsedError;
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectProductStateCopyWith<SelectProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectProductStateCopyWith<$Res> {
  factory $SelectProductStateCopyWith(
          SelectProductState value, $Res Function(SelectProductState) then) =
      _$SelectProductStateCopyWithImpl<$Res, SelectProductState>;
  @useResult
  $Res call(
      {List<ProductEntity> accounts,
      List<int> selected,
      AppFailure? failure,
      bool isLoading,
      bool isProcessing,
      bool isDone});

  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$SelectProductStateCopyWithImpl<$Res, $Val extends SelectProductState>
    implements $SelectProductStateCopyWith<$Res> {
  _$SelectProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selected = null,
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isProcessing = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<int>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$SelectProductStateImplCopyWith<$Res>
    implements $SelectProductStateCopyWith<$Res> {
  factory _$$SelectProductStateImplCopyWith(_$SelectProductStateImpl value,
          $Res Function(_$SelectProductStateImpl) then) =
      __$$SelectProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductEntity> accounts,
      List<int> selected,
      AppFailure? failure,
      bool isLoading,
      bool isProcessing,
      bool isDone});

  @override
  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$SelectProductStateImplCopyWithImpl<$Res>
    extends _$SelectProductStateCopyWithImpl<$Res, _$SelectProductStateImpl>
    implements _$$SelectProductStateImplCopyWith<$Res> {
  __$$SelectProductStateImplCopyWithImpl(_$SelectProductStateImpl _value,
      $Res Function(_$SelectProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? selected = null,
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isProcessing = null,
    Object? isDone = null,
  }) {
    return _then(_$SelectProductStateImpl(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      selected: null == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<int>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectProductStateImpl extends _SelectProductState {
  const _$SelectProductStateImpl(
      {final List<ProductEntity> accounts = const [],
      final List<int> selected = const [],
      this.failure,
      this.isLoading = false,
      this.isProcessing = false,
      this.isDone = false})
      : _accounts = accounts,
        _selected = selected,
        super._();

  final List<ProductEntity> _accounts;
  @override
  @JsonKey()
  List<ProductEntity> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  final List<int> _selected;
  @override
  @JsonKey()
  List<int> get selected {
    if (_selected is EqualUnmodifiableListView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selected);
  }

  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isProcessing;
  @override
  @JsonKey()
  final bool isDone;

  @override
  String toString() {
    return 'SelectProductState(accounts: $accounts, selected: $selected, failure: $failure, isLoading: $isLoading, isProcessing: $isProcessing, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectProductStateImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality().equals(other._selected, _selected) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_selected),
      failure,
      isLoading,
      isProcessing,
      isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectProductStateImplCopyWith<_$SelectProductStateImpl> get copyWith =>
      __$$SelectProductStateImplCopyWithImpl<_$SelectProductStateImpl>(
          this, _$identity);
}

abstract class _SelectProductState extends SelectProductState {
  const factory _SelectProductState(
      {final List<ProductEntity> accounts,
      final List<int> selected,
      final AppFailure? failure,
      final bool isLoading,
      final bool isProcessing,
      final bool isDone}) = _$SelectProductStateImpl;
  const _SelectProductState._() : super._();

  @override
  List<ProductEntity> get accounts;
  @override
  List<int> get selected;
  @override
  AppFailure? get failure;
  @override
  bool get isLoading;
  @override
  bool get isProcessing;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$SelectProductStateImplCopyWith<_$SelectProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
