import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_widget.dart';
import 'package:kebo_app/features/dev/dev_debug_screen.dart';

import '../../../../core/constants/app_asset_images.dart';
import '../../../../core/navigation/app_screens.dart';
import '../cubit/cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late SplashCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<SplashCubit>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (kDebugMode) shake.startListening();
      final Locale currentLocale = Localizations.localeOf(context);
      cubit.setup(currentLocale);
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: () => Navigator.pushNamedAndRemoveUntil(
              context, AppScreens.main, (route) => false),
          unauthenticated: () => Navigator.pushNamedAndRemoveUntil(
              context, AppScreens.login, (route) => false),
          first: () => Navigator.pushNamedAndRemoveUntil(
              context, AppScreens.welcome, (route) => false),
          orElse: () => Object(),
        );
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Center(
          child: Image.asset(
            AppAssetImages.logo,
            height: context.h * 0.25,
          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
        ),
      ),
    );
  }

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-50.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };
}
