import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/errors/app_failure.dart';
import 'package:kebo_app/core/network/app_client.dart';
import 'package:kebo_app/core/network/base_service.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import '../requests/requests.dart';

@Injectable()
class AccountService extends BaseService {
  final BaseReq baseReq;
  AccountService(this.baseReq);
  Future<Either<AppFailure, dynamic>> addManualTransaction({
    required String accountId,
    required String amount,
    required String description,
    required String category,
    required String subCategory,
    required String merchant,
    required String merchantWebsite,
    required String type,
    required String date,
  }) async {
    final body = {
      "accountId": accountId,
      "description": description,
      "amount": int.tryParse(amount) ?? 0,
      "category": category,
      "subCategory": subCategory,
      "merchant": merchant,
      "merchant_website": merchantWebsite,
      "Type": type,
      "value_date": date,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.addManualTransaction,
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

  Future<Either<AppFailure, dynamic>> registerAccount({
    required String link,
    required List<String> ids,
  }) async {
    final body = {
      "link": link,
      "accounts": ids,
      "token": "null",
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.registerSelectedAccountReq,
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

  Future<Either<AppFailure, dynamic>> addManualAccount({
    required String name,
    required String description,
    required String balance,
  }) async {
    final body = {
      "name": name,
      "description": description,
      "balance": double.parse(balance),
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.addManualAccount,
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

  Future<Either<AppFailure, dynamic>> resumeLinkSync({
    required String institution,
    required String token,
  }) async {
    final body = {
      "institution": institution,
      "token": token,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.resumeLinkSync,
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

  Future<Either<AppFailure, dynamic>> linkInstitution({
    required String message,
  }) async {
    final body = {
      "message": message,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.linkInstitutionReq,
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

  Future<Either<AppFailure, dynamic>> addAccount({
    required String username,
    required String password,
    required String institution,
    required String token,
  }) async {
    final body = {
      "userId": DateTime.now().microsecondsSinceEpoch,
      "institution": institution,
      "username": username,
      "password": password,
      "token": token.isEmpty ? 'token' : token,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.addAccountReq,
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

  Future<Either<AppFailure, dynamic>> getAllInstitutions() async {
    final res = await client.request(
      baseReq.institutionReq,
      Method.get,
      useIDToken: true,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getAviableAccount({
    required String institution,
  }) async {
    final body = {"institution": institution};
    final res = await client.request(
      baseReq.getAviableAccountReq,
      Method.post,
      useIDToken: true,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getCategory() async {
    final res = await client.request(
      baseReq.categoryReq,
      Method.post,
      useIDToken: true,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getSaving() async {
    final res = await client.request(
      baseReq.savingReq,
      Method.post,
      useIDToken: true,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getGoal() async {
    final res = await client.request(
      baseReq.goalReq,
      Method.post,
      useIDToken: true,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> updateCategory({
    required String id,
    required String category,
    required String subCategory,
  }) async {
    final body = {
      "transactionId": id,
      "category": category,
      "subCategory": subCategory
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.updateCategoryReq,
      Method.post,
      useIDToken: true,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> addSubcategory({
    required String id,
    required String category,
    required String subCategory,
    required String userid,
  }) async {
    final body = {
      "type": "INCOME",
      "category": category,
      "subCategory": subCategory,
      "userUid": userid,
    };
    final res = await client.request(
      baseReq.addSubcategoryReq,
      Method.post,
      useIDToken: true,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> updateDescription({
    required String id,
    required String description,
  }) async {
    final body = {
      "transactionId": id,
      "description": description,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.updateDescriptionReq,
      Method.post,
      useIDToken: true,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getAnalytic() async {
    final res = await client.request(
      baseReq.analyticReq,
      Method.get,
      useIDToken: true,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getSuggestion() async {
    final res = await client.request(
      baseReq.suggestionReq,
      Method.get,
      useIDToken: true,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getTransactionByAccount({
    required String id,
    required int page,
  }) async {
    final body = {
      'accountId': id,
      'page': page,
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.transactionByAccountReq,
      Method.post,
      useIDToken: true,
      body: id.isEmpty ? null : body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getTransaction({
    required int page,
  }) async {
    final body = {'page': page};
    final res = await client.request(
      baseReq.transactionReq,
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

  Future<Either<AppFailure, dynamic>> deleteAccount({
    required String id,
  }) async {
    final body = {'accountId': id};
    final res = await client.request(
      baseReq.deleteAccountReq,
      Method.post,
      useIDToken: true,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> deleteTransaction({
    required String id,
  }) async {
    final body = {'transactionId': id};
    final res = await client.request(
      baseReq.deleteTransactionReq,
      Method.post,
      useIDToken: true,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getAccount() async {
    final body = {'conId': '650fa31432154a9fbf0117fd'};
    final res = await client.request(
      baseReq.accountReq,
      Method.post,
      useIDToken: true,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getUserInfo() async {
    final res = await client.request(
      baseReq.userInfoReq,
      Method.get,
      useIDToken: true,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> updateInfo({
    required String name,
    required String familyName,
    required String bithdate,
    required String gender,
  }) async {
    final body = {
      "gender": gender,
      "birthdate": bithdate,
      "name": name,
      "family_name": familyName
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.updateInfoReq,
      Method.post,
      useIDToken: true,
      body: body,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }
}
