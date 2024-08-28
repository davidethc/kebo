import 'package:flutter/material.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';

class BottomSpace extends StatelessWidget {
  const BottomSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).viewInsets.bottom + 10,
      width: context.w,
    );
  }
}
