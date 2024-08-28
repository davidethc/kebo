import 'package:flutter/material.dart';

import '../../l10n/generated/l10n.dart';

enum LocaleLang { en, es }

extension LocaleLangExtension on LocaleLang {
  String asName(BuildContext context) {
    switch (this) {
      case LocaleLang.en:
        return S.current.en;
      case LocaleLang.es:
        return S.current.es;
      default:
        return '';
    }
  }

  Locale asLocale() {
    switch (this) {
      case LocaleLang.en:
        return const Locale('en');
      case LocaleLang.es:
        return const Locale('es');
      default:
        return const Locale('en');
    }
  }
}
