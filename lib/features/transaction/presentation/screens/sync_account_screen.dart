import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/app_animations.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/widgets/buttons/app_state_aware_button.dart';
import 'package:lottie/lottie.dart';

class SyncAccountScreen extends StatefulWidget {
  final String link;
  const SyncAccountScreen({super.key, required this.link});

  @override
  State<SyncAccountScreen> createState() => _SyncAccountScreenState();
}

class _SyncAccountScreenState extends State<SyncAccountScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar.withLeading(
          centerTitle: true,
          title: '',
          onPop: () => context
            ..pop()
            ..pop()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
                color: AppColors.accentPrimary.withOpacity(0.3),
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.accentPrimary)),
            child: Lottie.asset(AppAnimations.sync, height: 70, width: 70),
          ),
          const SizedBox(height: 40),
          Text(
            S.current.weAreSynchronizing,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.titleSmall?.copyWith(fontSize: 26),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              S.current.thisProcessWillTakeAFew(widget.link),
              textAlign: TextAlign.center,
              style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: AppStateAwareButton.primary(
              onTap: () => context.navigate(AppScreens.main, clearStack: true),
              label: S.current.goToBegin,
              loading: false,
              enabled: true,
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
