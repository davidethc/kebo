// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListAccountState {
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  List<InstitutionEntity> get result => throw _privateConstructorUsedError;
  List<InstitutionEntity> get institutions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListAccountStateCopyWith<ListAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListAccountStateCopyWith<$Res> {
  factory $ListAccountStateCopyWith(
          ListAccountState value, $Res Function(ListAccountState) then) =
      _$ListAccountStateCopyWithImpl<$Res, ListAccountState>;
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isLoading,
      String keyword,
      List<InstitutionEntity> result,
      List<InstitutionEntity> institutions});

  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$ListAccountStateCopyWithImpl<$Res, $Val extends ListAccountState>
    implements $ListAccountStateCopyWith<$Res> {
  _$ListAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? keyword = null,
    Object? result = null,
    Object? institutions = null,
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
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<InstitutionEntity>,
      institutions: null == institutions
          ? _value.institutions
          : institutions // ignore: cast_nullable_to_non_nullable
              as List<InstitutionEntity>,
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
abstract class _$$ListAccountStateImplCopyWith<$Res>
    implements $ListAccountStateCopyWith<$Res> {
  factory _$$ListAccountStateImplCopyWith(_$ListAccountStateImpl value,
          $Res Function(_$ListAccountStateImpl) then) =
      __$$ListAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppFailure? failure,
      bool isLoading,
      String keyword,
      List<InstitutionEntity> result,
      List<InstitutionEntity> institutions});

  @override
  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$ListAccountStateImplCopyWithImpl<$Res>
    extends _$ListAccountStateCopyWithImpl<$Res, _$ListAccountStateImpl>
    implements _$$ListAccountStateImplCopyWith<$Res> {
  __$$ListAccountStateImplCopyWithImpl(_$ListAccountStateImpl _value,
      $Res Function(_$ListAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? keyword = null,
    Object? result = null,
    Object? institutions = null,
  }) {
    return _then(_$ListAccountStateImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<InstitutionEntity>,
      institutions: null == institutions
          ? _value._institutions
          : institutions // ignore: cast_nullable_to_non_nullable
              as List<InstitutionEntity>,
    ));
  }
}

/// @nodoc

class _$ListAccountStateImpl extends _ListAccountState {
  const _$ListAccountStateImpl(
      {this.failure,
      this.isLoading = false,
      this.keyword = '',
      final List<InstitutionEntity> result = const [],
      final List<InstitutionEntity> institutions = const []})
      : _result = result,
        _institutions = institutions,
        super._();

  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String keyword;
  final List<InstitutionEntity> _result;
  @override
  @JsonKey()
  List<InstitutionEntity> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  final List<InstitutionEntity> _institutions;
  @override
  @JsonKey()
  List<InstitutionEntity> get institutions {
    if (_institutions is EqualUnmodifiableListView) return _institutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_institutions);
  }

  @override
  String toString() {
    return 'ListAccountState(failure: $failure, isLoading: $isLoading, keyword: $keyword, result: $result, institutions: $institutions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListAccountStateImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            const DeepCollectionEquality()
                .equals(other._institutions, _institutions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failure,
      isLoading,
      keyword,
      const DeepCollectionEquality().hash(_result),
      const DeepCollectionEquality().hash(_institutions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListAccountStateImplCopyWith<_$ListAccountStateImpl> get copyWith =>
      __$$ListAccountStateImplCopyWithImpl<_$ListAccountStateImpl>(
          this, _$identity);
}

abstract class _ListAccountState extends ListAccountState {
  const factory _ListAccountState(
      {final AppFailure? failure,
      final bool isLoading,
      final String keyword,
      final List<InstitutionEntity> result,
      final List<InstitutionEntity> institutions}) = _$ListAccountStateImpl;
  const _ListAccountState._() : super._();

  @override
  AppFailure? get failure;
  @override
  bool get isLoading;
  @override
  String get keyword;
  @override
  List<InstitutionEntity> get result;
  @override
  List<InstitutionEntity> get institutions;
  @override
  @JsonKey(ignore: true)
  _$$ListAccountStateImplCopyWith<_$ListAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
