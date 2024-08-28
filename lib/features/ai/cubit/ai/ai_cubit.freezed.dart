// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AIState {
  AppFailure? get failure => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get lastId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAdded => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  List<ChatEntity> get chats => throw _privateConstructorUsedError;
  List<String> get suggestions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AIStateCopyWith<AIState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AIStateCopyWith<$Res> {
  factory $AIStateCopyWith(AIState value, $Res Function(AIState) then) =
      _$AIStateCopyWithImpl<$Res, AIState>;
  @useResult
  $Res call(
      {AppFailure? failure,
      String content,
      int lastId,
      bool isLoading,
      bool isAdded,
      bool isProcessing,
      List<ChatEntity> chats,
      List<String> suggestions});

  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$AIStateCopyWithImpl<$Res, $Val extends AIState>
    implements $AIStateCopyWith<$Res> {
  _$AIStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? content = null,
    Object? lastId = null,
    Object? isLoading = null,
    Object? isAdded = null,
    Object? isProcessing = null,
    Object? chats = null,
    Object? suggestions = null,
  }) {
    return _then(_value.copyWith(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      lastId: null == lastId
          ? _value.lastId
          : lastId // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatEntity>,
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$AIStateImplCopyWith<$Res> implements $AIStateCopyWith<$Res> {
  factory _$$AIStateImplCopyWith(
          _$AIStateImpl value, $Res Function(_$AIStateImpl) then) =
      __$$AIStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppFailure? failure,
      String content,
      int lastId,
      bool isLoading,
      bool isAdded,
      bool isProcessing,
      List<ChatEntity> chats,
      List<String> suggestions});

  @override
  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$AIStateImplCopyWithImpl<$Res>
    extends _$AIStateCopyWithImpl<$Res, _$AIStateImpl>
    implements _$$AIStateImplCopyWith<$Res> {
  __$$AIStateImplCopyWithImpl(
      _$AIStateImpl _value, $Res Function(_$AIStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? content = null,
    Object? lastId = null,
    Object? isLoading = null,
    Object? isAdded = null,
    Object? isProcessing = null,
    Object? chats = null,
    Object? suggestions = null,
  }) {
    return _then(_$AIStateImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      lastId: null == lastId
          ? _value.lastId
          : lastId // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatEntity>,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AIStateImpl extends _AIState {
  const _$AIStateImpl(
      {this.failure,
      this.content = '',
      this.lastId = 0,
      this.isLoading = false,
      this.isAdded = false,
      this.isProcessing = false,
      final List<ChatEntity> chats = const [],
      final List<String> suggestions = const []})
      : _chats = chats,
        _suggestions = suggestions,
        super._();

  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final int lastId;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isAdded;
  @override
  @JsonKey()
  final bool isProcessing;
  final List<ChatEntity> _chats;
  @override
  @JsonKey()
  List<ChatEntity> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  final List<String> _suggestions;
  @override
  @JsonKey()
  List<String> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'AIState(failure: $failure, content: $content, lastId: $lastId, isLoading: $isLoading, isAdded: $isAdded, isProcessing: $isProcessing, chats: $chats, suggestions: $suggestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AIStateImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.lastId, lastId) || other.lastId == lastId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failure,
      content,
      lastId,
      isLoading,
      isAdded,
      isProcessing,
      const DeepCollectionEquality().hash(_chats),
      const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AIStateImplCopyWith<_$AIStateImpl> get copyWith =>
      __$$AIStateImplCopyWithImpl<_$AIStateImpl>(this, _$identity);
}

abstract class _AIState extends AIState {
  const factory _AIState(
      {final AppFailure? failure,
      final String content,
      final int lastId,
      final bool isLoading,
      final bool isAdded,
      final bool isProcessing,
      final List<ChatEntity> chats,
      final List<String> suggestions}) = _$AIStateImpl;
  const _AIState._() : super._();

  @override
  AppFailure? get failure;
  @override
  String get content;
  @override
  int get lastId;
  @override
  bool get isLoading;
  @override
  bool get isAdded;
  @override
  bool get isProcessing;
  @override
  List<ChatEntity> get chats;
  @override
  List<String> get suggestions;
  @override
  @JsonKey(ignore: true)
  _$$AIStateImplCopyWith<_$AIStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
