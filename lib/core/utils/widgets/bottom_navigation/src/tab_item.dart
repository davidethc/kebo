import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final double? iconSize;
  final bool isActive;
  final Widget? child;

  const TabItem({
    Key? key,
    required this.isActive,
    required this.icon,
    this.iconSize = 24,
    this.child,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => child ?? _buildDefaultTab(context);

  Widget _buildDefaultTab(BuildContext context) {
    return Icon(
      icon,
      color: isActive ? AppColors.accentPrimary : AppColors.greyLight,
      size: iconSize,
    );
  }
}
