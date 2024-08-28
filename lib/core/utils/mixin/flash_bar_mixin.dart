import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import '../../data/errors/app_failure.dart';

mixin FlashBarMixin {
  Object showFailureMessage(BuildContext context,
      {required AppFailure failure, VoidCallback? onDismissed}) {
    String? msg;
    late bool isSuccess;
    failure.when(
      failure: (String error) {
        msg = error;
        isSuccess = false;
      },
      success: (String message) {
        msg = message;
        isSuccess = true;
      },
    );
    if (isSuccess) {
      return _showSuccess(context, msg ?? '', onDismissed);
    } else {
      return _showError(context, msg ?? '', onDismissed);
    }
  }

  Object _showSuccess(
          BuildContext context, String content, VoidCallback? onDismissed) =>
      showTopFlash(
        context,
        content: content,
        flashType: FlashType.info,
        duration: 2,
        onDismissed: onDismissed,
      );
  Object _showError(
          BuildContext context, String content, VoidCallback? onDismissed) =>
      showTopFlash(
        context,
        content: content,
        flashType: FlashType.error,
        duration: 2,
        onDismissed: onDismissed,
      );

  static String lastMessage = '';

  Object showTopFlash(
    BuildContext context, {
    required String content,
    required FlashType flashType,
    int duration = 2,
    VoidCallback? onDismissed,
  }) {
    showFlash(
      context: context,
      duration: Duration(seconds: duration),
      persistent: true,
      builder: (_, controller) => FlashBar(
        behavior: FlashBehavior.floating,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        controller: controller,
        position: FlashPosition.top,
        content: Text(content, style: context.theme.textTheme.bodyMedium),
        icon: _buildIcon(flashType: flashType),
      ),
    ).then((_) {
      if (onDismissed != null) onDismissed();
    });
    return Object();
  }

  Widget _buildIcon({
    required FlashType flashType,
  }) {
    if (flashType == FlashType.error) {
      return const Icon(
        FeatherIcons.alertTriangle,
        color: AppColors.errorColor,
      );
    }
    if (flashType == FlashType.info) return const Icon(FeatherIcons.info);
    return const SizedBox();
  }
}

enum FlashType { error, info }
