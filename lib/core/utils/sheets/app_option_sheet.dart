import 'package:flutter/material.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';

import '../../constants/theme/app_colors.dart';
import '../../l10n/generated/l10n.dart';
import '../widgets/buttons/app_button.dart';
import 'app_bottom_sheet.dart';

class AppOption {
  final dynamic value;
  final String label;
  final Color? textColor;
  final Color? buttonColor;

  const AppOption(
      {required this.value,
      required this.label,
      this.buttonColor,
      this.textColor});
}

class AppOptionSheet extends AppBottomSheet {
  final String? title;
  final String? subtitle;
  final int? maxLinesTitle;
  final int? maxLinesSubtitle;
  final List<AppOption> options;

  const AppOptionSheet(
      {this.title,
      this.subtitle,
      required this.options,
      this.maxLinesSubtitle,
      this.maxLinesTitle,
      super.key});

  factory AppOptionSheet.trueFalse({
    required String title,
    String? subtitle,
    required String red,
    required String white,
    int? maxLinesTitle,
    int? maxLinesSubtitle,
  }) =>
      AppOptionSheet(
        title: title,
        subtitle: subtitle,
        maxLinesSubtitle: maxLinesSubtitle,
        maxLinesTitle: maxLinesTitle,
        options: [
          AppOption(
            value: true,
            label: red,
            buttonColor: AppColors.abortColor,
            textColor: AppColors.accentSecondary,
          ),
          AppOption(
            value: false,
            label: white,
            buttonColor: AppColors.accentPrimary,
            textColor: AppColors.accentSecondary,
          ),
        ],
      );

  factory AppOptionSheet.abort(BuildContext context) =>
      AppOptionSheet.trueFalse(
          title: S.of(context).areYouSure,
          subtitle: S.of(context).allEntriesWillBeLost,
          red: S.of(context).yesAbort,
          white: S.of(context).noContinue);

  factory AppOptionSheet.confirmLogout(BuildContext context) =>
      AppOptionSheet.trueFalse(
          title: S.of(context).areYouSure,
          red: S.of(context).yesLogout,
          white: S.of(context).noLogout);

  factory AppOptionSheet.confirmAccountDeletion(BuildContext context) =>
      AppOptionSheet.trueFalse(
          title: S.of(context).sureDeleteAccount,
          maxLinesTitle: 2,
          maxLinesSubtitle: 3,
          subtitle: S.of(context).sureDeleteAccountSubtitle,
          red: S.of(context).yesDeleteAcc,
          white: S.of(context).noAbort);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 12),
          if (title != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Text(
                title!,
                maxLines: maxLinesTitle ?? 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.titleMedium?.copyWith(
                    color: AppColors.bgSecondary, fontWeight: FontWeight.bold),
              ),
            ),
          if (subtitle != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Text(
                subtitle!,
                maxLines: maxLinesSubtitle ?? 3,
                style: context.theme.textTheme.titleMedium,
              ),
            ),
          for (final o in options)
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: AppButton(
                onTap: () => Navigator.pop(context, o.value),
                label: Text(
                  o.label,
                  style: TextStyle(color: o.textColor),
                ),
                style: AppButton.primaryStyle.copyWith(
                  backgroundColor: MaterialStatePropertyAll(o.buttonColor),
                ),
              ),
            )
        ],
      ),
    );
  }
}
