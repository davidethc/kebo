import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/errors/app_failure.dart';
import 'package:kebo_app/core/network/app_client.dart';
import 'package:kebo_app/core/network/base_service.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';

import '../requests/requests.dart';

@Injectable()
class ReportService extends BaseService {
  final BaseReq baseReq;
  ReportService(this.baseReq);

  Future<Either<AppFailure, dynamic>> getEvent() async {
    final res = await client.request(
      baseReq.eventReq,
      Method.post,
      useIDToken: true,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getScore() async {
    final res = await client.request(
      baseReq.scoreReq,
      Method.get,
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

  Future<Either<AppFailure, dynamic>> getBalance() async {
    final res = await client.request(
      baseReq.balanceReq,
      Method.post,
      useIDToken: true,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getIncome() async {
    final body = {
      "range": "day",
      "startDate":
          DateTime.now().subtract(const Duration(days: 90)).toIso8601String(),
      "endDate": DateTime.now().toIso8601String(),
    };
    final res = await client.request(
      baseReq.incomeReq,
      Method.post,
      body: body,
      useIDToken: true,
    );
    LoggerUtils.d('body $body');
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getExpense() async {
    final body = {
      "range": "day",
      "startDate":
          DateTime.now().subtract(const Duration(days: 90)).toIso8601String(),
      "endDate": DateTime.now().toIso8601String(),
    };
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.expenseReq,
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

  Future<Either<AppFailure, dynamic>> getTrendIncome() async {
    final res = await client.request(
      baseReq.trendIncomeReq,
      Method.post,
      useIDToken: true,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getTrendExpense() async {
    final res = await client.request(
      baseReq.trendExpenseReq,
      Method.post,
      useIDToken: true,
    );
    if (res.isSuccess) {
      return Right(res.data);
    } else {
      return Left(AppFailure.failure(msg: res.exeption.toString()));
    }
  }

  Future<Either<AppFailure, dynamic>> getDashboardLine() async {
    Map body = {'filter': 'month'};
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.dashboardLineReq,
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

  Future<Either<AppFailure, dynamic>> getDashboardIncome() async {
    Map body = {'filter': 'month'};
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.dashboardIncomeReq,
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

  Future<Either<AppFailure, dynamic>> getDashboardBar() async {
    Map body = {'range': 180, 'filter': 'day'};
    LoggerUtils.d('body $body');
    final res = await client.request(
      baseReq.dashboardBarReq,
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
}
