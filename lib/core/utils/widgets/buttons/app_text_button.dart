import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:kebo_app/core/utils/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final String name;
  final MaterialStateProperty<Color?>? backgroundColor;
  final void Function() onTap;
  final Color? textColor;
  const AppTextButton(
      {super.key,
      required this.name,
      required this.onTap,
      this.textColor,
      this.backgroundColor});

  @override
  Widget build(
    BuildContext context,
  ) {
    return AppButton(
      onTap: onTap,
      label: Center(
        child: Text(
          name,
          style: context.theme.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w400,
              color: textColor ?? AppColors.accentSecondary),
        ),
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          backgroundColor:
              backgroundColor ?? MaterialStateProperty.all(AppColors.black)),
    );
  }
}
