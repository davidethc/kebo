import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/app_asset_images.dart';
import 'package:kebo_app/core/data/local/local_data.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/widgets/buttons/app_state_aware_button.dart';

class CompleteScreen extends StatefulWidget {
  const CompleteScreen({super.key});

  @override
  State<CompleteScreen> createState() => _CompleteScreenState();
}

class _CompleteScreenState extends State<CompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            AppAssetImages.logo,
            height: context.h * 0.12,
          ),
          const Spacer(),
          Image.asset(
            AppAssetImages.welcomeComplete,
            height: context.h * 0.3,
          ),
          const SizedBox(height: 50),
          Text(
            S.current.takeControllOfYourFinances,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.titleSmall?.copyWith(fontSize: 20),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: Text(
              S.current.thankYouForTakingTheTime,
              style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: AppStateAwareButton.primary(
              onTap: () {
                context.navigate(AppScreens.login, clearStack: true);
                LocalDataHelper.instance.setSeen(true);
              },
              label: S.current.start,
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
