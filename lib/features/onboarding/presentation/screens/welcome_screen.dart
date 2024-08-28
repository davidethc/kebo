import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/app_asset_images.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/widgets/buttons/app_state_aware_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          Image.asset(
            AppAssetImages.logo,
            height: context.h * 0.1,
          ),
          const SizedBox(height: 30),
          Text(
            S.current.welcomeTo,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.titleSmall
                ?.copyWith(fontSize: 24, color: AppColors.black),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              S.current.theFirstAppImproveYourFinancial,
              style: context.theme.textTheme.bodyLarge
                  ?.copyWith(fontSize: 16, color: AppColors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          Image.asset(AppAssetImages.welcome, height: context.h * .3),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: AppStateAwareButton.primary(
              onTap: () => context.navigate(AppScreens.register),
              label: S.current.letStart,
              loading: false,
              enabled: true,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
