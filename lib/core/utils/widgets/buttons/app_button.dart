import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';

import '../../../constants/theme/app_fonts.dart';

enum AppIconButtonPosition {
  start,
  end,
  none,
}

extension ExtensionOnButtonStyle on ButtonStyle {
  ButtonStyle get anyHeight => copyWith(
        maximumSize: const MaterialStatePropertyAll(Size.infinite),
        minimumSize: const MaterialStatePropertyAll(Size.zero),
      );

  ButtonStyle fixHeight(double height) => copyWith(
        maximumSize: MaterialStatePropertyAll(Size(double.infinity, height)),
        minimumSize: MaterialStatePropertyAll(Size(0, height)),
      );

  ButtonStyle get zeroPadding =>
      copyWith(padding: const MaterialStatePropertyAll(EdgeInsets.zero));
}

class AppButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget label;
  final ButtonStyle? style;
  final bool? enabled;
  final double? elevation;
  final EdgeInsets? padding;

  const AppButton({
    required this.onTap,
    required this.label,
    this.enabled,
    this.elevation,
    this.style,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return TextButton(
      onPressed: (enabled == false) ? null : onTap,
      style: style?.copyWith(
          maximumSize: MaterialStateProperty.all(Size(width, 54)),
          minimumSize: MaterialStateProperty.all(Size(width, 54)),
          elevation: MaterialStatePropertyAll(elevation ?? 0),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) =>
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          padding: padding != null
              ? MaterialStatePropertyAll(padding)
              : context.theme.textButtonTheme.style?.padding),
      child: label,
    );
  }

  factory AppButton.primary({
    required VoidCallback onTap,
    required String label,
    bool? enabled,
    bool forceUppercase = false,
    int? maxLines,
    bool? isGradient,
    double? elevation,
  }) =>
      AppButton(
        onTap: onTap,
        enabled: enabled,
        elevation: elevation,
        label: Text(
          forceUppercase ? label.toUpperCase() : label,
          maxLines: maxLines ?? 1,
          style: const TextStyle(
              fontSize: 18,
              fontFamily: AppFonts.readexPro,
              color: Colors.white,
              letterSpacing: 1),
        ),
        style: primaryStyle,
      );

  factory AppButton.secondary({
    required VoidCallback onTap,
    required String label,
    bool? enabled,
    bool forceUppercase = true,
    int? maxLines,
  }) =>
      AppButton(
        onTap: onTap,
        label: Text(
          label,
          maxLines: maxLines ?? 1,
          style: const TextStyle(
              fontSize: 18,
              fontFamily: AppFonts.readexPro,
              color: AppColors.black,
              letterSpacing: 1),
        ),
        style: secondaryStyle,
        enabled: enabled,
      );

  factory AppButton.abort({
    required VoidCallback onTap,
    required String label,
    bool? enabled,
    bool forceUppercase = true,
    int? maxLines,
    double? elevation,
  }) =>
      AppButton(
        onTap: onTap,
        enabled: enabled,
        elevation: elevation,
        label: Text(
          forceUppercase ? label.toUpperCase() : label,
          maxLines: maxLines ?? 1,
        ),
        style: abortStyle,
      );

  factory AppButton.discreet({
    required VoidCallback onTap,
    required String label,
    bool? enabled,
    bool forceUppercase = true,
    int? maxLines,
    Color? textColor,
    TextStyle? textStyle,
  }) =>
      AppButton(
        onTap: onTap,
        label: Text(
          forceUppercase ? label.toUpperCase() : label,
          maxLines: maxLines ?? 1,
        ),
        style: discreetStyle(textColor: textColor, textStyle: textStyle),
        enabled: enabled,
      );

  factory AppButton.icon({
    required VoidCallback onTap,
    required Widget label,
    IconData? icon,
    Widget? wIcon,
    double iconSize = 24,
    double spaceBetween = 0,
    ButtonStyle? style,
    bool? enabled,
    Color? iconColor,
    EdgeInsets? padding,
    bool padIconSymmetrically = true,
    bool expand = true,
    AppIconButtonPosition? iconPosition,
  }) =>
      AppButton(
          onTap: onTap,
          style: style,
          enabled: enabled,
          padding: padding,
          label: Row(
            mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
            children: [
              if (iconPosition == AppIconButtonPosition.start ||
                  iconPosition == null)
                wIcon ?? Icon(icon, size: iconSize, color: iconColor)
              else if (padIconSymmetrically)
                SizedBox(width: iconSize),
              if (iconPosition == AppIconButtonPosition.start ||
                  iconPosition == null)
                SizedBox(width: spaceBetween),
              expand ? Expanded(child: label) : label,
              if (iconPosition == AppIconButtonPosition.end)
                SizedBox(width: spaceBetween),
              if (iconPosition == AppIconButtonPosition.end)
                wIcon ?? Icon(icon, size: iconSize, color: iconColor)
              else if (padIconSymmetrically)
                SizedBox(width: iconSize),
            ],
          ));
  static ButtonStyle get outline => TextButton.styleFrom(
        minimumSize: const Size(37, 37),
        side: const BorderSide(width: 1, color: AppColors.buttonColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: Colors.transparent,
        disabledBackgroundColor: AppColors.buttonColor.withOpacity(0.2),
      );
  static ButtonStyle get primaryStyle => TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: AppColors.buttonColor,
        disabledBackgroundColor: AppColors.buttonColor.withOpacity(0.2),
      );

  static ButtonStyle get secondaryStyle => TextButton.styleFrom(
        backgroundColor: AppColors.white,
        side: const BorderSide(
            color: Color(0xffe5e7eb), width: 1, style: BorderStyle.solid),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        disabledBackgroundColor: AppColors.buttonDisabled,
      );

  static ButtonStyle discreetStyle(
          {double? borderRadius, Color? textColor, TextStyle? textStyle}) =>
      TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 99)),
          textStyle: textStyle,
          foregroundColor: textColor ?? Colors.white);

  static ButtonStyle get abortStyle => TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(99),
      ),
      backgroundColor: AppColors.abortColor,
      foregroundColor: AppColors.accentSecondary);

  static ButtonStyle get outlinedStyle => TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(99),
            side: const BorderSide(color: AppColors.bgSecondary)),
        disabledBackgroundColor: AppColors.buttonDisabled,
      );

  static ButtonStyle get outlinedStyleAccentSecondary => TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(99),
            side: const BorderSide(color: AppColors.accentSecondary)),
        textStyle: const TextStyle(color: AppColors.accentSecondary),
        disabledBackgroundColor: AppColors.buttonDisabled,
      );
}
