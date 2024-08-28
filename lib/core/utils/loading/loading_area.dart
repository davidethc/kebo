import 'package:kebo_app/core/constants/app_animations.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingArea extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  const LoadingArea({Key? key, required this.isLoading, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IgnorePointer(
          ignoring: isLoading,
          child: Opacity(
            opacity: isLoading ? 0.5 : 1,
            child: child,
          ),
        ),
        if (isLoading)
          Container(
            height: context.h,
            width: context.w,
            color: const Color.fromARGB(255, 152, 99, 226).withOpacity(0.05),
            child: Center(
              child: LottieBuilder.asset(
                AppAnimations.loading,
                height: 100,
                width: 200,
              ),
            ),
          ),
      ],
    );
  }
}
