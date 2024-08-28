import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';

class ItemMessage extends StatelessWidget {
  final bool isMe;
  final String message;
  final Function() onFinished;
  const ItemMessage({
    super.key,
    required this.isMe,
    required this.message,
    required this.onFinished,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.topLeft : Alignment.topRight,
      child: Container(
        margin: !isMe
            ? EdgeInsets.only(left: context.w / 20)
            : EdgeInsets.only(right: context.w / 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isMe
              ? AppColors.accentPrimary
              : const Color(0xff39d2c0).withOpacity(0.3),
          border: Border.all(
            color: isMe ? AppColors.accentPrimary : const Color(0xff39d2c0),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          message,
          style: context.theme.textTheme.bodyLarge?.copyWith(
              color: isMe ? AppColors.white : AppColors.black, fontSize: 14),
        ),
      ),
    );
  }
}
