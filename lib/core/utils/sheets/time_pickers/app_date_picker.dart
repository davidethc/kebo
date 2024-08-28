import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'app_time_picker_base.dart';

class AppDatePicker extends AppTimePickerBase<DateTime> {
  final ValueNotifier<DateTime> _notifier;
  final cupertino.CupertinoDatePickerMode mode;
  final bool isReport;
  @override
  ValueNotifier<DateTime> get notifier => _notifier;

  @override
  bool get showAbortButton => mode == cupertino.CupertinoDatePickerMode.time;

  AppDatePicker({
    this.mode = cupertino.CupertinoDatePickerMode.date,
    Key? key,
  })  : _notifier = ValueNotifier(DateTime.now()),
        isReport = false,
        super(key: key);
  AppDatePicker.isReport({
    this.mode = cupertino.CupertinoDatePickerMode.date,
    Key? key,
  })  : _notifier = ValueNotifier(DateTime(DateTime.now().year,
            DateTime.now().month, DateTime.now().day, 0, 0)),
        isReport = true,
        super(key: key);
  @override
  Widget buildChild(BuildContext context, value) {
    if (isReport) {
      final DateTime now = DateTime.now();
      final DateTime min = DateTime(1970, 1, 1, 1, 1);
      return cupertino.CupertinoDatePicker(
        initialDateTime: value,
        maximumDate: now,
        minimumDate: min,
        mode: mode,
        minuteInterval: 5,
        use24hFormat: true,
        dateOrder: cupertino.DatePickerDateOrder.ymd,
        onDateTimeChanged: (val) => _notifier.value = val,
      );
    }
    final DateTime max = DateTime(DateTime.now().year + 100,
        DateTime.now().month, DateTime.now().day, 0, 0);
    final DateTime min = DateTime(1970, 1, 1, 1, 1);
    return cupertino.CupertinoDatePicker(
      initialDateTime: value,
      maximumDate: max,
      minimumDate: min,
      mode: mode,
      use24hFormat: true,
      dateOrder: cupertino.DatePickerDateOrder.ymd,
      onDateTimeChanged: (val) => _notifier.value = val,
    );
  }
}
