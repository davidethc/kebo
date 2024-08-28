import 'dart:math';
import 'package:intl/intl.dart';

extension RandomIntExtension on int {
  static int randomInt(int min, int max) {
    return Random().nextInt(max - min + 1) + min;
  }
}

extension LengthExtension on int {
  double get metersToKilometers =>
      double.parse((this / 1000).toStringAsFixed(1));

  int get secondToMinute => int.parse((this / 60).toStringAsFixed(0));
}

extension NumberFormatting on num {
  String formatNumber({int decimalDigits = 2, String locale = 'en_US'}) {
    NumberFormat numberFormat =
        NumberFormat('#,##0.${"#" * decimalDigits}', locale);
    return numberFormat.format(this);
  }
}
