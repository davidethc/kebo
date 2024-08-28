import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:kebo_app/core/utils/dialog/cupertino_dialog.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import 'package:flutter/services.dart';
import '../../navigation/route_generator.dart';

class ConnectivityHelper {
  ConnectivityHelper._();

  static final instance = ConnectivityHelper._();

  late ConnectivityResult connectionStatus;
  final Connectivity _connectivity = Connectivity();

  Future<void> setup() async {
    try {
      connectionStatus = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      connectionStatus = ConnectivityResult.none;
      LoggerUtils.d("Error connectivity ${e.message}");
    }
  }

  Stream<ConnectivityResult> getStream() => _connectivity.onConnectivityChanged;

  Future<void> onReconnect() async {
    setup();
    if (connectionStatus != ConnectivityResult.none) {
      rootNavigatorKey.currentContext!.pop();
    } else {
      showCupertino(
        rootNavigatorKey.currentContext!,
        title: 'Notification',
        subtitle: "Please check network connection and try again.",
      );
    }
  }
}
