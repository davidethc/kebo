import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import 'package:flutter/material.dart';

import 'otp_widget.dart';

class BuildOtp extends StatelessWidget {
  final TextEditingController controller;
  const BuildOtp({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: CodeInput(
            controller: controller,
            length: 4,
            builder: CodeInputBuilders.lightCircle(
                emptyRadius: 4,
                textStyle: context.theme.textTheme.bodyLarge!
                    .copyWith(fontWeight: FontWeight.w600)),
            spacing: 16,
            onFilled: (value) => LoggerUtils.d('Your input is $value.'),
            onDone: (value) => LoggerUtils.d('Your input is $value.'),
          ),
        ),
      ],
    );
  }
}
