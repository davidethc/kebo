// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:kebo_app/config/config.dart';
import 'package:kebo_app/core/data/local/local_data.dart';
import 'package:kebo_app/core/data/reponse/base_response.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/navigation/route_generator.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';

enum Method { post, put, patch, delete, get }

@Injectable()
class AppClient {
  final dio = Dio();
  static List<LogModel> apiLogger = [];

  Future<dynamic> request(
    url,
    Method method, {
    body,
    params,
    useIDToken = false,
    isChat = false,
  }) async {
    dio
      ..options.baseUrl =
          isChat ? Config.flavorData.chatBaseUrl : Config.flavorData.baseUrl
      ..options.receiveDataWhenStatusError = true
      ..options.connectTimeout = const Duration(seconds: 180)
      ..options.receiveTimeout = const Duration(seconds: 180)
      ..options.sendTimeout = const Duration(seconds: 180)
      ..httpClientAdapter
      ..options.headers = {
        'Content-Type': 'application/json',
      };
    if (useIDToken) {
      final token = await LocalDataHelper.instance.getToken();
      LoggerUtils.d('token $token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
      }
    }

    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: false,
          responseHeader: false,
          request: false,
          requestBody: false,
        ),
      );
    }

    Response? res;
    String? err;
    try {
      if (method == Method.post) {
        final result = await dio.post(url, data: body, queryParameters: params);
        res = result;
        LoggerUtils.d('data ${result.data}');
        return BaseResponse.success(data: result.data);
      } else if (method == Method.put) {
        final result = await dio.put(url, data: body, queryParameters: params);
        res = result;
        return BaseResponse.success(data: result.data);
      } else if (method == Method.patch) {
        final result =
            await dio.patch(url, data: body, queryParameters: params);
        res = result;
        return BaseResponse.success(data: result.data);
      } else if (method == Method.delete) {
        final result = await dio.delete(url, queryParameters: params);
        res = result;
        return BaseResponse.success(data: result.data);
      } else if (method == Method.get) {
        final result = await dio.get(url, queryParameters: params);
        res = result;
        return BaseResponse.success(data: result.data);
      }
    } on DioException catch (e) {
      err = e.toString();
      if (e.response?.statusCode == 400) {
        return BaseResponse.fail(Exception(e.response?.data['msg']));
      } else if (e.response?.statusCode == 401) {
        showDialog(
          context: rootNavigatorKey.currentState!.context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: const Text('Login session has expired'),
              actions: [
                CupertinoDialogAction(
                  child: Text(S.current.ok),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            );
          },
        );
        rootNavigate(AppScreens.login);
      } else if (e.response != null) {
        final data = jsonDecode(e.response.toString());
        if (data['msg'] != null) {
          return BaseResponse.fail(Exception(data['msg']));
        }
        return BaseResponse.fail(Exception(data['message']));
      } else {
        return BaseResponse.fail(e);
      }
    } finally {
      apiLogger.insert(
        0,
        LogModel(
          method: method.toString(),
          path: url,
          baseUrl: Config.flavorData.baseUrl,
          data: body.toString(),
          response: res?.data?.toString() ?? "",
          error: err,
          time: DateTime.now(),
        ),
      );
    }
  }

  Future<dynamic> requestFormData(
    url,
    Method method, {
    FormData? formData,
    useIDToken = false,
  }) async {
    dio
      ..options.baseUrl = Config.flavorData.baseUrl
      ..options.connectTimeout = const Duration(seconds: 180)
      ..options.receiveTimeout = const Duration(seconds: 180)
      ..options.sendTimeout = const Duration(seconds: 180)
      ..httpClientAdapter
      ..options.headers = {"Content-Type": "multipart/form-data"};
    if (useIDToken) {
      final token = await LocalDataHelper.instance.getToken();
      LoggerUtils.d('token $token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
      }
    }

    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: true,
          responseHeader: true,
          request: true,
          requestBody: true,
        ),
      );
    }

    try {
      if (method == Method.post) {
        final result = await dio.post(url, data: formData);
        return BaseResponse.success(data: result.data);
      } else if (method == Method.put) {
        final result = await dio.put(url, data: formData);
        return BaseResponse.success(data: result.data);
      } else if (method == Method.patch) {
        final result = await dio.patch(url, data: formData);
        return BaseResponse.success(data: result.data);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        showDialog(
          context: rootNavigatorKey.currentState!.context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: const Text('Login session has expired'),
              actions: [
                CupertinoDialogAction(
                  child: Text(S.current.ok),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            );
          },
        );
        rootNavigate(AppScreens.login);
      } else if (e.response != null) {
        final data = jsonDecode(e.response.toString());
        return BaseResponse.fail(Exception(data['message']));
      } else {
        return BaseResponse.fail(e);
      }
    }
  }
}

class LogModel {
  final String? method;
  final String? path;
  final String? baseUrl;
  final String? data;
  final String response;
  final String? error;
  final DateTime? time;

  LogModel({
    this.method,
    this.path,
    this.baseUrl,
    this.data,
    this.response = "",
    this.error,
    this.time,
  });

  String get text => '''
--------------$baseUrl--------------
Method: $method
Path: $path
Data: $data
Response: $response
Error: $error
Time: ${time == null ? "" : DateFormat("dd/mm/yyyy hh:mm:ss").format(time!)}
------------------------------------
''';
}
