// ignore_for_file: deprecated_member_use

import 'package:kebo_app/core/utils/extensions/extentions.dart';

import '../../l10n/generated/l10n.dart';

enum AgeEnum {
  under18,
  between18And24,
  between25And34,
  between35And44,
  between45And54,
  between55And64,
  upper65,
}

extension AgeEnumExtension on AgeEnum {
  String asString() {
    switch (this) {
      case AgeEnum.under18:
        return S.current.under18;
      case AgeEnum.between18And24:
        return S.current.betweenXtoY(18, 24);
      case AgeEnum.between25And34:
        return S.current.betweenXtoY(25, 34);
      case AgeEnum.between35And44:
        return S.current.betweenXtoY(35, 44);
      case AgeEnum.between45And54:
        return S.current.betweenXtoY(45, 54);
      case AgeEnum.between55And64:
        return S.current.betweenXtoY(55, 64);
      case AgeEnum.upper65:
        return S.current.upper65;
      default:
        return '';
    }
  }

  String date() {
    switch (this) {
      case AgeEnum.under18:
        return DateTime(DateTime.now().year, 1, 1)
            .subtract(const Duration(days: 17 * 365))
            .formatddmmyyyy;
      case AgeEnum.between18And24:
        return DateTime(DateTime.now().year, 1, 1)
            .subtract(const Duration(days: 18 * 365))
            .formatddmmyyyy;
      case AgeEnum.between25And34:
        return DateTime(DateTime.now().year, 1, 1)
            .subtract(const Duration(days: 25 * 365))
            .formatddmmyyyy;
      case AgeEnum.between35And44:
        return DateTime(DateTime.now().year, 1, 1)
            .subtract(const Duration(days: 35 * 365))
            .formatddmmyyyy;
      case AgeEnum.between45And54:
        return DateTime(DateTime.now().year, 1, 1)
            .subtract(const Duration(days: 45 * 365))
            .formatddmmyyyy;
      case AgeEnum.between55And64:
        return DateTime(DateTime.now().year, 1, 1)
            .subtract(const Duration(days: 55 * 365))
            .formatddmmyyyy;
      case AgeEnum.upper65:
        return DateTime(DateTime.now().year, 1, 1)
            .subtract(const Duration(days: 65 * 365))
            .formatddmmyyyy;
      default:
        return DateTime(DateTime.now().year, 1, 1)
            .subtract(const Duration(days: 17 * 365))
            .formatddmmyyyy;
    }
  }

  String value() {
    switch (this) {
      case AgeEnum.under18:
        return '17';
      case AgeEnum.between18And24:
        return '18';
      case AgeEnum.between25And34:
        return '25';
      case AgeEnum.between35And44:
        return '35';
      case AgeEnum.between45And54:
        return '45';
      case AgeEnum.between55And64:
        return '55';
      case AgeEnum.upper65:
        return '65';
      default:
        return '17';
    }
  }
}
