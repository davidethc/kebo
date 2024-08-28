part of 'ai_cubit.dart';

@freezed
class AIState with _$AIState {
  const AIState._();

  const factory AIState({
    AppFailure? failure,
    @Default('') String content,
    @Default(0) int lastId,
    @Default(false) bool isLoading,
    @Default(false) bool isAdded,
    @Default(false) bool isProcessing,
    @Default([]) List<ChatEntity> chats,
    @Default([]) List<String> suggestions,
  }) = _AIState;

  bool get isAnythingLoading => isLoading;

  bool get isNothingLoading => !isAnythingLoading;
}
