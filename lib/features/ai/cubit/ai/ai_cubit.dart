import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/chat_entity/chat_entity.dart';
import 'package:kebo_app/core/data/local/local_data.dart';
import 'package:kebo_app/core/data/providers/user_provider.dart';
import 'package:kebo_app/core/data/services/chat_service.dart';
import '../../../../../core/data/errors/app_failure.dart';
import 'package:http/http.dart' as http;
part 'ai_state.dart';
part 'ai_cubit.freezed.dart';

@Injectable()
class AICubit extends Cubit<AIState> {
  final ChatService _chatService;
  final UserProvider _userProvider;
  AICubit(
    this._chatService,
    this._userProvider,
  ) : super(const AIState());

  void onFlashBarDismissed() => emit(state.copyWith(failure: null));

  void initial() async {
    List<String> suggestions = LocalDataHelper.instance.getSuggestion();
    if (suggestions.isEmpty) {
      _onLoadSuggestion();
    } else {
      emit(state.copyWith(suggestions: suggestions));
    }
  }

  void _onLoadSuggestion() async {
    emit(state.copyWith(isLoading: true));
    final res = await _chatService.getSuggestionChat();
    res.fold(
      (left) => emit(state.copyWith(isLoading: false, failure: left)),
      (right) {
        List<String> suggestions = [];
        right['questions'].forEach((e) => suggestions.add(e));
        LocalDataHelper.instance.setSuggestion(suggestions);
        emit(state.copyWith(suggestions: suggestions, isLoading: false));
      },
    );
  }

  void onChangedContent(String value) => emit(state.copyWith(content: value));

  void onSendMessage(String content) async {
    emit(state.copyWith(isProcessing: true, isAdded: true));
    final chat = ChatEntity(
        id: DateTime.now().microsecondsSinceEpoch,
        isMe: false,
        message: content);
    emit(state.copyWith(chats: [...state.chats, chat], lastId: 0));
    final uri =
        Uri.parse('https://kebo-ai-production.up.railway.app/chat/stream');
    final headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json'
    };
    final body = jsonEncode(
        {"session_id": _userProvider.currentUser.name, "message": content});

    try {
      final request = http.Request('POST', uri)
        ..headers.addAll(headers)
        ..body = body;
      final streamedResponse = await request.send();
      streamedResponse.stream.transform(utf8.decoder).listen((value) async {
        List<ChatEntity> chats = state.chats.toList();
        if (chats.last.id == state.lastId) {
          int last = chats.length - 1;
          String message = '${chats[last].message}$value';
          chats[last] = chats[last].copyWith(message: message);
          emit(state.copyWith(chats: chats, isProcessing: false));
        } else {
          int lastId = DateTime.now().microsecondsSinceEpoch;
          final chat = ChatEntity(id: lastId, isMe: true, message: value);
          chats.add(chat);
          emit(
            state.copyWith(
              lastId: lastId,
              chats: chats,
              isProcessing: false,
            ),
          );
        }
      });
    } catch (e) {
      emit(state.copyWith(failure: AppFailure.failure(msg: e.toString())));
    }

    // emit(state.copyWith(isProcessing: true, isAdded: true));
    // final chat = ChatEntity(isMe: false, message: content);
    // emit(state.copyWith(chats: [...state.chats, chat]));
    // final res = await _chatService.getChatStream(
    //     sessionId: _userProvider.currentUser.name, message: content);
    // res.fold(
    //   (left) => emit(state.copyWith(isProcessing: false, failure: left)),
    //   (right) {
    // final chat = ChatEntity(isMe: true, message: right);
    // emit(
    //     state.copyWith(chats: [...state.chats, chat], isProcessing: false));
    //   },
    // );
  }

  void onUpdateAdded() async {
    emit(state.copyWith(isAdded: false));
  }
}
