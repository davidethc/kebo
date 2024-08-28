import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppGlobalData {
  AppGlobalData._();

  static final instance = AppGlobalData._();
  final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  String appVersionName = '';

  Future<String> getDeviceId() async {
    if (Platform.isIOS) {
      var iosDeviceInfo = await _deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else {
      var androidDeviceInfo = await _deviceInfo.androidInfo;
      return androidDeviceInfo.androidId; // unique ID on Android
    }
  }

  Future<void> getAppData() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    appVersionName = packageInfo.version;
  }
}
