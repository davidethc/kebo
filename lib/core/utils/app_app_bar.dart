import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:flutter/material.dart';

import '../constants/theme/app_colors.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onPop;
  final bool hasLeading;
  final bool centerTitle;

  final List<Widget>? actions;
  const AppAppBar({
    required this.title,
    this.onPop,
    this.centerTitle = false,
    super.key,
    this.actions,
  })  : hasLeading = false,
        super();
  const AppAppBar.withLeading({
    required this.title,
    this.onPop,
    this.centerTitle = false,
    super.key,
    this.actions,
  })  : hasLeading = true,
        super();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: !hasLeading ? 0 : null,
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(title,
          style: context.theme.textTheme.titleMedium?.copyWith(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400)),
      automaticallyImplyLeading: true,
      centerTitle: centerTitle,
      leading: hasLeading
          ? IconButton(
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
              onPressed: () {
                context.pop();
                if (onPop != null) onPop!();
              },
            )
          : const SizedBox.shrink(),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
