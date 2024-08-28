import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/errors/app_failure.dart';
import 'package:kebo_app/core/network/app_client.dart';
import 'package:kebo_app/core/network/base_service.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';

import '../requests/requests.dart';

@Injectable()
class AuthService extends BaseService {
  final BaseReq baseReq;
  AuthService(this.baseReq);
  Future<Either<AppFailure, dynamic>> refreshToken({
    required String refreshToken,
  }) async {
    final body = {
      'refresh_token': refreshToken,
    };
    final res = await client.request(
      baseReq.refreshTokenReq,
      Method.post,
      body: body,
      useIDToken: true,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> registerGoogle({
    required String idToken,
    required String email,
    required String birthdate,
    required String gender,
    required String name,
    required String familyName,
    required String phoneNumber,
    required String customAge,
    required String invitedFrom,
  }) async {
    final body = {
      'token': idToken,
      'username': phoneNumber,
      'email': email,
      'birthdate': birthdate,
      'gender': gender,
      'name': name,
      'family_name': familyName,
      'phone_number': phoneNumber,
      'custom:age': customAge,
      'invitedFrom': invitedFrom,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.signUpGoogleReq,
      Method.post,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> loginGoogle({
    required String idToken,
  }) async {
    final body = {'token': idToken};
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.loginGoogleReq,
      Method.post,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> login({
    required String username,
    required String password,
  }) async {
    final body = {
      'username': username,
      'password': password,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.loginReq,
      Method.post,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> resendOTP({
    required String username,
  }) async {
    final body = {
      'username': username,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.resendOTPReq,
      Method.post,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> verifyAccount({
    required String username,
    required String otp,
  }) async {
    final body = {
      'username': username,
      'code': otp,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.verifyAccountReq,
      Method.post,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> confirmForgetPassword({
    required String username,
    required String password,
    required String code,
  }) async {
    final body = {
      'username': username,
      'password': password,
      'code': code,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.confirmForgetPasswordReq,
      Method.post,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> forgetPassword({
    required String username,
  }) async {
    final body = {
      'username': username,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.forgetPasswordReq,
      Method.post,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> register({
    required String email,
    required String password,
    required String birthdate,
    required String gender,
    required String name,
    required String familyName,
    required String phoneNumber,
    required String customAge,
    required String invitedFrom,
  }) async {
    final body = {
      'username': phoneNumber,
      'email': email,
      'password': password,
      'birthdate': birthdate,
      'gender': gender,
      'name': name,
      'family_name': familyName,
      'phone_number': phoneNumber,
      'custom:age': customAge,
      'invitedFrom': invitedFrom,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.registerReq,
      Method.post,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }
}
