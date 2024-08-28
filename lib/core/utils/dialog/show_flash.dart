import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';

void showFlashAlert({
  required BuildContext context,
  required String content,
}) {
  showFlash(
    context: context,
    duration: const Duration(seconds: 1),
    persistent: true,
    builder: (_, controller) => FlashBar(
      behavior: FlashBehavior.floating,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      controller: controller,
      position: FlashPosition.top,
      content: Text(content, style: context.theme.textTheme.bodyMedium),
      icon: const Icon(FeatherIcons.alertTriangle, color: AppColors.errorColor),
    ),
  );
}

void showFlashSuccess({
  required BuildContext context,
  required String content,
}) {
  showFlash(
    context: context,
    duration: const Duration(seconds: 1),
    persistent: true,
    builder: (_, controller) => FlashBar(
      behavior: FlashBehavior.floating,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      controller: controller,
      position: FlashPosition.top,
      icon: const Icon(FeatherIcons.check, color: AppColors.onlyGreen),
      content: Text(content, style: context.theme.textTheme.bodyMedium),
    ),
  );
}
