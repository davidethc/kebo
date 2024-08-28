import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDataHelper {
  final String _token = '_token';
  final String _refreshToken = '_refreshToken';
  final String _language = '_language';
  final String _seen = '_seen';
  final String _isLogin = '_isLogin';
  final String _suggestion = '_suggestion';
  LocalDataHelper._();
  static final instance = LocalDataHelper._();

  late SharedPreferences sharedPreferences;
  late FlutterSecureStorage flutterSecureStorage;

  Future init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    flutterSecureStorage = const FlutterSecureStorage();
  }

  Future setSuggestion(List<String> data) async {
    await sharedPreferences.setStringList(_suggestion, data);
  }

  List<String> getSuggestion() {
    return sharedPreferences.getStringList(_suggestion) ?? [];
  }

  Future setSeen(bool data) async {
    await sharedPreferences.setBool(_seen, data);
  }

  bool getSeen() {
    return sharedPreferences.getBool(_seen) ?? false;
  }

  Future setIsLogin(bool data) async {
    await sharedPreferences.setBool(_isLogin, data);
  }

  bool getIsLogin() {
    return sharedPreferences.getBool(_isLogin) ?? false;
  }

  Future setLanguage(String data) async {
    await sharedPreferences.setString(_language, data);
  }

  String getLanguage() {
    return sharedPreferences.getString(_language) ?? 'es';
  }

  Future setToken(String token) async {
    await flutterSecureStorage.write(key: _token, value: token);
  }

  Future<String?> getToken() async {
    try {
      final String? result = await flutterSecureStorage.read(key: _token);
      return result;
    } on PlatformException {
      flutterSecureStorage.deleteAll();
      return null;
    }
  }

  Future setRefreshToken(String token) async {
    await flutterSecureStorage.write(key: _refreshToken, value: token);
  }

  Future<String?> getRefreshToken() async {
    try {
      final String? result =
          await flutterSecureStorage.read(key: _refreshToken);
      return result;
    } on PlatformException {
      flutterSecureStorage.deleteAll();
      return null;
    }
  }

  Future clearData() async {
    setIsLogin(false);
  }
}
