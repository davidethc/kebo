class AppDateDuration {
  int days;
  int months;
  int years;

  AppDateDuration({this.days = 0, this.months = 0, this.years = 0});

  @override
  String toString() {
    return 'Years: $years, Months: $months, Days: $days';
  }
}

abstract class AppAgeCalculator {
  static const List<int> _daysInMonth = [
    31, // Jan
    28, // Feb, it varies from 28 to 29
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31 // Dec
  ];

  static bool isLeapYear(int year) =>
      (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));

  static int daysInMonth(int year, int month) =>
      (month == DateTime.february && isLeapYear(year))
          ? 29
          : _daysInMonth[month - 1];

  static AppDateDuration dateDifference({
    required DateTime fromDate,
    required DateTime toDate,
  }) {
    // Check if toDate to be included in the calculation
    DateTime endDate = toDate;

    int years = endDate.year - fromDate.year;
    int months = 0;
    int days = 0;

    if (fromDate.month > endDate.month) {
      years--;
      months = (DateTime.monthsPerYear + endDate.month - fromDate.month);

      if (fromDate.day > endDate.day) {
        months--;
        days = daysInMonth(fromDate.year + years,
                ((fromDate.month + months - 1) % DateTime.monthsPerYear) + 1) +
            endDate.day -
            fromDate.day;
      } else {
        days = endDate.day - fromDate.day;
      }
    } else if (endDate.month == fromDate.month) {
      if (fromDate.day > endDate.day) {
        years--;
        months = DateTime.monthsPerYear - 1;
        days = daysInMonth(fromDate.year + years,
                ((fromDate.month + months - 1) % DateTime.monthsPerYear) + 1) +
            endDate.day -
            fromDate.day;
      } else {
        days = endDate.day - fromDate.day;
      }
    } else {
      months = (endDate.month - fromDate.month);

      if (fromDate.day > endDate.day) {
        months--;
        days = daysInMonth(fromDate.year + years, (fromDate.month + months)) +
            endDate.day -
            fromDate.day;
      } else {
        days = endDate.day - fromDate.day;
      }
    }

    return AppDateDuration(days: days, months: months, years: years);
  }

  static DateTime add(
      {required DateTime date, required AppDateDuration duration}) {
    int years = date.year + duration.years;
    years += ((date.month + duration.months) ~/ DateTime.monthsPerYear);
    int months = ((date.month + duration.months) % DateTime.monthsPerYear);

    int days = date.day + duration.days - 1;

    return DateTime(years, months, 1).add(Duration(days: days));
  }

  static AppDateDuration age(DateTime birthdate, {DateTime? today}) {
    return dateDifference(fromDate: birthdate, toDate: today ?? DateTime.now());
  }

  static AppDateDuration timeToNextBirthday(DateTime birthdate,
      {DateTime? fromDate}) {
    DateTime endDate = fromDate ?? DateTime.now();
    DateTime tempDate = DateTime(endDate.year, birthdate.month, birthdate.day);
    DateTime nextBirthdayDate = tempDate.isBefore(endDate)
        ? AppAgeCalculator.add(
            date: tempDate, duration: AppDateDuration(years: 1))
        : tempDate;
    return dateDifference(fromDate: endDate, toDate: nextBirthdayDate);
  }
}
