import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/errors/app_failure.dart';
import 'package:kebo_app/core/network/app_client.dart';
import 'package:kebo_app/core/network/base_service.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import '../requests/requests.dart';

@Injectable()
class ChatService extends BaseService {
  final BaseReq baseReq;
  ChatService(this.baseReq);
  Future<Either<AppFailure, dynamic>> getChatStream({
    required String sessionId,
    required String message,
  }) async {
    final body = {
      "session_id": sessionId,
      "message": message,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      '/chat/stream',
      Method.post,
      useIDToken: false,
      isChat: true,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getChat({
    required String sessionId,
    required String message,
  }) async {
    final body = {
      "session_id": sessionId,
      "message": message,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      '/chat',
      Method.post,
      useIDToken: false,
      isChat: true,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getSuggestionChat() async {
    final res = await client.request(
      baseReq.questionReq,
      Method.post,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }
}
