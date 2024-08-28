// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchCategoryState {
  String get search => throw _privateConstructorUsedError;
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  List<CategoryEntity> get categories => throw _privateConstructorUsedError;
  List<CategoryEntity> get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchCategoryStateCopyWith<SearchCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCategoryStateCopyWith<$Res> {
  factory $SearchCategoryStateCopyWith(
          SearchCategoryState value, $Res Function(SearchCategoryState) then) =
      _$SearchCategoryStateCopyWithImpl<$Res, SearchCategoryState>;
  @useResult
  $Res call(
      {String search,
      AppFailure? failure,
      bool isLoading,
      bool isDone,
      List<CategoryEntity> categories,
      List<CategoryEntity> result});

  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$SearchCategoryStateCopyWithImpl<$Res, $Val extends SearchCategoryState>
    implements $SearchCategoryStateCopyWith<$Res> {
  _$SearchCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isDone = null,
    Object? categories = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
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
abstract class _$$SearchCategoryStateImplCopyWith<$Res>
    implements $SearchCategoryStateCopyWith<$Res> {
  factory _$$SearchCategoryStateImplCopyWith(_$SearchCategoryStateImpl value,
          $Res Function(_$SearchCategoryStateImpl) then) =
      __$$SearchCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String search,
      AppFailure? failure,
      bool isLoading,
      bool isDone,
      List<CategoryEntity> categories,
      List<CategoryEntity> result});

  @override
  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$SearchCategoryStateImplCopyWithImpl<$Res>
    extends _$SearchCategoryStateCopyWithImpl<$Res, _$SearchCategoryStateImpl>
    implements _$$SearchCategoryStateImplCopyWith<$Res> {
  __$$SearchCategoryStateImplCopyWithImpl(_$SearchCategoryStateImpl _value,
      $Res Function(_$SearchCategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isDone = null,
    Object? categories = null,
    Object? result = null,
  }) {
    return _then(_$SearchCategoryStateImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
    ));
  }
}

/// @nodoc

class _$SearchCategoryStateImpl extends _SearchCategoryState
    with DiagnosticableTreeMixin {
  const _$SearchCategoryStateImpl(
      {this.search = '',
      this.failure,
      this.isLoading = false,
      this.isDone = false,
      final List<CategoryEntity> categories = const [],
      final List<CategoryEntity> result = const []})
      : _categories = categories,
        _result = result,
        super._();

  @override
  @JsonKey()
  final String search;
  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isDone;
  final List<CategoryEntity> _categories;
  @override
  @JsonKey()
  List<CategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<CategoryEntity> _result;
  @override
  @JsonKey()
  List<CategoryEntity> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchCategoryState(search: $search, failure: $failure, isLoading: $isLoading, isDone: $isDone, categories: $categories, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchCategoryState'))
      ..add(DiagnosticsProperty('search', search))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isDone', isDone))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCategoryStateImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      search,
      failure,
      isLoading,
      isDone,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCategoryStateImplCopyWith<_$SearchCategoryStateImpl> get copyWith =>
      __$$SearchCategoryStateImplCopyWithImpl<_$SearchCategoryStateImpl>(
          this, _$identity);
}

abstract class _SearchCategoryState extends SearchCategoryState {
  const factory _SearchCategoryState(
      {final String search,
      final AppFailure? failure,
      final bool isLoading,
      final bool isDone,
      final List<CategoryEntity> categories,
      final List<CategoryEntity> result}) = _$SearchCategoryStateImpl;
  const _SearchCategoryState._() : super._();

  @override
  String get search;
  @override
  AppFailure? get failure;
  @override
  bool get isLoading;
  @override
  bool get isDone;
  @override
  List<CategoryEntity> get categories;
  @override
  List<CategoryEntity> get result;
  @override
  @JsonKey(ignore: true)
  _$$SearchCategoryStateImplCopyWith<_$SearchCategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
