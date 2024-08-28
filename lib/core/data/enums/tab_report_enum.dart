// ignore_for_file: deprecated_member_use

import 'package:kebo_app/core/utils/extensions/extension_on_time.dart';

import '../../l10n/generated/l10n.dart';

enum TabReportEnum { daily, weekly, monthly }

extension TabReportEnumExtension on TabReportEnum {
  String asString() {
    switch (this) {
      case TabReportEnum.daily:
        return S.current.daily;
      case TabReportEnum.weekly:
        return S.current.weekly;
      case TabReportEnum.monthly:
        return S.current.monthly;

      default:
        return '';
    }
  }

  String value() {
    switch (this) {
      case TabReportEnum.daily:
        return 'day';
      case TabReportEnum.weekly:
        return 'week';
      case TabReportEnum.monthly:
        return 'monthly';
      default:
        return 'day';
    }
  }

  DateTime start() {
    switch (this) {
      case TabReportEnum.daily:
        DateTime now = DateTime.now();
        return DateTime(now.year, now.month, now.day, 0, 0, 0);
      case TabReportEnum.weekly:
        DateTime now = DateTime.now().getStartOfWeek();
        return DateTime(now.year, now.month, now.day, 0, 0, 0);
      case TabReportEnum.monthly:
        DateTime now = DateTime.now().startOfMonth;
        return DateTime(now.year, now.month, now.day, 0, 0, 0);
      default:
        DateTime now = DateTime.now();
        return DateTime(now.year, now.month, now.day, 0, 0, 0);
    }
  }

  DateTime end() {
    DateTime now = DateTime.now();
    switch (this) {
      case TabReportEnum.daily:
        return DateTime(now.year, now.month, now.day, 23, 59, 59);
      case TabReportEnum.weekly:
        return DateTime(now.year, now.month, now.day, 23, 59, 59);
      case TabReportEnum.monthly:
        return DateTime(now.year, now.month, now.day, 23, 59, 59);
      default:
        return DateTime(now.year, now.month, now.day, 23, 59, 59);
    }
  }

  int getDate() {
    switch (this) {
      case TabReportEnum.daily:
        return 1;
      case TabReportEnum.weekly:
        return 7;
      case TabReportEnum.monthly:
        return 30;
      default:
        return 1;
    }
  }
}
