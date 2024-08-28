// ignore_for_file: unused_import, depend_on_referenced_packages

import 'dart:io';

import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

extension ExtensionOnDateTime on DateTime {
  int minutesDifferenceToNow() {
    final now = DateTime.now();
    final timeDifference = now.difference(this);
    return timeDifference.inMinutes.abs();
  }

  String toFormattedTime() {
    return DateFormat('dd MMM yyyy').format(this);
  }

  String toFormatDate() {
    return DateFormat('yyyy-MM-ddTHH:mm:ss').format(this);
  }

  String formatDate() {
    return DateFormat('d MMM yyyy').format(this);
  }

  String toFormattedTimeString() {
    return DateFormat('dd/MM/yyyy HH:mm').format(this);
  }

  String toFormatTime() {
    return DateFormat('h:mm a').format(this);
  }

  String toFormatedTime() {
    return DateFormat('HH:mm:ss').format(this);
  }

  String toGermanTime() {
    var hour = this.hour.toString().padLeft(2, '0');
    var minute = this.minute.toString().padLeft(2, '0');
    return '$hour:$minute Uhr';
  }

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  String get appFormat => DateFormat.yMMMd(Platform.localeName).format(this);

  String get appFormatWithoutYear =>
      DateFormat.MMMd(Platform.localeName).format(this);

  String get appFormatMMM => DateFormat('MMMM').format(this);

  String get appFormatddmmyyyy => DateFormat('dd.MM.yyyy').format(this);

  String get dateFormat => DateFormat('yyyy-MM-dd').format(this);

  String get appFormatTime {
    final hour = this.hour.toString().padLeft(2, '0');
    final minute = this.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  String get formatddmmyyyy => DateFormat('yyyy-MM-dd').format(this);

  int daysBetween(DateTime other) {
    DateTime from = DateTime(year, month, day);
    DateTime to = DateTime(other.year, other.month, other.day);
    final difference = to.difference(from).inHours / 24;
    return difference.round();
  }

  int weekNumber() {
    final now = this;
    final secondsSinceEpoch = now.millisecondsSinceEpoch ~/ 1000;
    final secondsFromMonday = secondsSinceEpoch -
        (now.weekday - 1) * 86400 -
        now.hour * 3600 -
        now.minute * 60 -
        now.second;
    final weeksSinceEpoch = (secondsFromMonday / 604800).floor();
    return weeksSinceEpoch;
  }

  DateTime getStartOfWeek() {
    final int weekday = this.weekday;
    return subtract(Duration(days: weekday - 1));
  }
}

extension StringToDateTimeExtension on String {
  DateTime toDateTime() {
    return DateFormat('HH:mm').parse(this);
  }
}

extension DateTimeExtension on DateTime {
  DateTime get startOfMonth {
    return DateTime(year, month, 1);
  }
}

extension WeekExtensions on int {
  DateTime get startOfWeek {
    int epochTime = (this * 7 + 4) * 24 * 60 * 60;
    DateTime monday =
        DateTime.fromMillisecondsSinceEpoch(epochTime * 1000, isUtc: true);
    return monday.subtract(Duration(days: monday.weekday - 1));
  }

  DateTime get endOfWeek {
    int epochTime = (this * 7 + 4) * 24 * 60 * 60;
    DateTime sunday = DateTime.fromMillisecondsSinceEpoch(
        (epochTime + 6 * 24 * 60 * 60) * 1000,
        isUtc: true);
    return sunday.add(Duration(days: DateTime.saturday - sunday.weekday + 1));
  }
}

extension ExtensionOnDuration on Duration {
  String get appFormat => DateFormat('HH:mm', Platform.localeName)
      .format(DateTime(1111, 1, 1, inHours, inMinutes % 60));
}

extension DateHelpers on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return now.day == day && now.month == month && now.year == year;
  }
}

extension GetNameOfDay on DateTime {
  String getNameOfDay() {
    final dateFormat = DateFormat('EEEE');
    return dateFormat.format(this);
  }
}

extension CompareDateTime on DateTime {
  String compareDateTime(DateTime date) {
    final now = DateTime.now();
    final other =
        DateTime(now.year, now.month, now.day, date.hour, date.minute);
    final thisDuration = other.difference(this);
    final difference = thisDuration.abs();

    final hours = difference.inHours;
    final minutes = difference.inMinutes.remainder(60);
    final seconds = difference.inSeconds.remainder(60);

    final formattedTime = '${hours}hr ${minutes}m ${seconds}s';

    return formattedTime;
  }

  String compareDate(DateTime currentTime) {
    final now = DateTime.now();
    final other = DateTime(
        now.year, now.month, now.day, currentTime.hour, currentTime.minute);

    final thisTime = DateTime(now.year, now.month, now.day, hour, minute);
    final thisDuration = other.difference(thisTime);
    final difference = thisDuration.abs();

    final hours = difference.inHours;
    final minutes = difference.inMinutes.remainder(60);

    final formattedTime = '${hours}hr ${minutes}m';

    return formattedTime;
  }

  int compareTime(DateTime date) {
    final now = DateTime.now();
    final other =
        DateTime(now.year, now.month, now.day, date.hour, date.minute);
    final thisDuration = this.difference(other);
    final difference = thisDuration.inMinutes.abs();

    return difference;
  }
}

extension TimeFormatting on int {
  String formatTimeFromSeconds() {
    Duration duration = Duration(seconds: this);

    int minutes = (duration.inMinutes % 60);
    return S.current.xMinute(minutes);
  }
}
