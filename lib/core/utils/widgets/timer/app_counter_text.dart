import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:kebo_app/core/utils/widgets/timer/timer_count_down.dart';
import 'package:flutter/material.dart';

import '../../../l10n/generated/l10n.dart';
import 'timer_controller.dart';

class AppCounterText extends StatefulWidget {
  final int seconds;
  final VoidCallback onResend;

  const AppCounterText({
    super.key,
    required this.seconds,
    required this.onResend,
  });

  @override
  State<AppCounterText> createState() => _AppCounterTextState();
}

class _AppCounterTextState extends State<AppCounterText> {
  final _isFinish = ValueNotifier<bool>(false);
  final CountdownController _controller = CountdownController(autoStart: true);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isFinish,
      builder: (BuildContext context, bool isFinish, _) => isFinish
          ? InkWell(
              child: Text(
                '${S.current.sendAgain} ',
                style: context.theme.textTheme.bodyLarge?.copyWith(
                    color: const Color(0xff068550),
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                _isFinish.value = false;
                _controller.restart();
                widget.onResend();
              },
            )
          : Countdown(
              controller: _controller,
              seconds: widget.seconds,
              build: (_, double time) => Row(
                children: [
                  GestureDetector(
                    child: Text(
                      '${S.current.sendAgain} ',
                      style: context.theme.textTheme.bodyLarge?.copyWith(
                          color: const Color(0xff068550),
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      if (!_isFinish.value) {
                        // showToastMessage(S.current
                        //     .pleaseWaitSeconds(formatHHMMSS(time.toInt())));
                      } else {
                        _isFinish.value = false;
                        _controller.restart();
                        widget.onResend();
                      }
                    },
                  ),
                  Text(
                    '(${formatHHMMSS(time.toInt())}s)',
                    style: context.theme.textTheme.bodyLarge?.copyWith(
                        color: const Color(0xff068550),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              interval: const Duration(milliseconds: 100),
              onFinished: () => _isFinish.value = true,
            ),
    );
  }

  String formatHHMMSS(int seconds) {
    int hours = (seconds / 3600).truncate();
    seconds = (seconds % 3600).truncate();
    int minutes = (seconds / 60).truncate();
    String hoursStr = (hours).toString().padLeft(2, '0');
    String minutesStr = (minutes).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');
    if (hours == 0) {
      return "$minutesStr:$secondsStr";
    }

    return "$hoursStr:$minutesStr:$secondsStr";
  }
}
