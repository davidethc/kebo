import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'app_time_picker_base.dart';

class AppDurationPicker extends AppTimePickerBase<Duration> {
  final ValueNotifier<Duration> _notifier;
  final cupertino.CupertinoDatePickerMode mode;

  @override
  ValueNotifier<Duration> get notifier => _notifier;

  @override
  bool get showAbortButton => true;

  AppDurationPicker({
    this.mode = cupertino.CupertinoDatePickerMode.date,
    Key? key,
  })  : _notifier = ValueNotifier(const Duration(hours: 1)),
        super(key: key);

  @override
  Widget buildChild(BuildContext context, value) {
    return cupertino.CupertinoTimerPicker(
        initialTimerDuration: value,
        minuteInterval: 5,
        mode: cupertino.CupertinoTimerPickerMode.hm,
        onTimerDurationChanged: (value) => _notifier.value = value);
  }
}
