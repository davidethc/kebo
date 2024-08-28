import 'package:kebo_app/core/data/local/local_data.dart';
import 'package:flutter/material.dart';

import '../enums/locale.dart';

class LocaleModel extends ChangeNotifier {
  LocaleLang? _locale;

  String get languageCode => LocalDataHelper.instance.getLanguage();

  LocaleLang get locale =>
      _locale ??
      LocaleLang.values.firstWhere((element) => element.name == languageCode);

  List<LocaleLang> get listLocale => LocaleLang.values;

  int get currentIndex => listLocale.indexOf(locale);

  void set(LocaleLang locale) {
    _locale = locale;
    LocalDataHelper.instance.setLanguage(locale.asLocale().languageCode);
    notifyListeners();
  }
}
