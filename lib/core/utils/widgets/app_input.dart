// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/theme/theme.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';

class AppInput extends StatelessWidget {
  final String? text;
  final String? hint;
  final TextAlign? textAlign;
  final TextInputType? type;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final TextEditingController? ted;
  final String? err;
  final TextStyle? textStyle;
  final String? Function(String?)? validator;
  final bool? enabled;
  final bool? obscure;
  final bool? showPassword;
  final VoidCallback? onTogglePasswordVisibility;
  final bool? autofocus;
  final Widget? prefixIcon;
  final TextInputAction? action;
  final Function(bool)? onFocusChange;
  final Function(String)? onChanged;
  final Function(String)? onSubmit;
  final InputDecoration? inputDecoration;
  final bool? forceUpperCase;
  final Color? cursorColor;
  final dynamic icon;
  final bool isLight;
  final bool hasLabel;
  final VoidCallback? onTap;
  final List<TextInputFormatter>? inputFormatters;
  const AppInput({
    this.text,
    this.onTap,
    this.hint,
    this.textAlign,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.validator,
    this.type,
    this.ted,
    this.err,
    this.textStyle,
    this.autofocus,
    this.showPassword,
    this.onTogglePasswordVisibility,
    this.enabled,
    this.obscure,
    this.prefixIcon,
    this.action,
    this.onChanged,
    this.onSubmit,
    this.onFocusChange,
    this.inputDecoration,
    this.forceUpperCase,
    this.cursorColor,
    this.icon,
    Key? key,
    this.inputFormatters,
  })  : isLight = false,
        hasLabel = true,
        super(key: key);
  const AppInput.noLabel({
    this.text,
    this.onTap,
    this.hint,
    this.textAlign,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.validator,
    this.type,
    this.ted,
    this.err,
    this.textStyle,
    this.autofocus,
    this.showPassword,
    this.onTogglePasswordVisibility,
    this.enabled,
    this.obscure,
    this.prefixIcon,
    this.action,
    this.onChanged,
    this.onSubmit,
    this.onFocusChange,
    this.inputDecoration,
    this.forceUpperCase,
    this.cursorColor,
    this.icon,
    Key? key,
    this.inputFormatters,
  })  : isLight = false,
        hasLabel = false,
        super(key: key);
  const AppInput.light({
    this.text,
    this.hint,
    this.textAlign,
    this.onTap,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.validator,
    this.type,
    this.ted,
    this.err,
    this.textStyle,
    this.autofocus,
    this.showPassword,
    this.onTogglePasswordVisibility,
    this.enabled,
    this.obscure,
    this.prefixIcon,
    this.action,
    this.onChanged,
    this.onSubmit,
    this.onFocusChange,
    this.inputDecoration,
    this.forceUpperCase,
    this.cursorColor,
    this.icon,
    Key? key,
    this.inputFormatters,
  })  : isLight = true,
        hasLabel = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: onFocusChange,
      child: TextFormField(
        controller: ted,
        inputFormatters: inputFormatters,
        onTap: onTap,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        initialValue: text,
        autofocus: autofocus ?? false,
        cursorColor: cursorColor,
        obscureText: (obscure ?? false) && showPassword != true,
        onChanged: onChanged,
        enabled: enabled ?? true,
        textAlign: textAlign ?? TextAlign.center,
        textInputAction: action,
        keyboardType: type ?? TextInputType.text,
        onFieldSubmitted: onSubmit,
        obscuringCharacter: '•',
        validator: validator,
        maxLines: maxLines ?? 1,
        maxLength: maxLength ?? 124,
        minLines: minLines ?? 1,
        style: textStyle ?? primaryTextStyle(context),
        textCapitalization: obscure == true ||
                type == TextInputType.visiblePassword ||
                type == TextInputType.emailAddress
            ? TextCapitalization.none
            : TextCapitalization.sentences,
        decoration: inputDecoration ?? primaryDecoration(context),
      ),
    );
  }

  InputDecoration primaryDecoration(BuildContext context) => InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 15)
            .copyWith(right: 0, left: isLight ? 16 : 20),
        hintText: hint,
        hintStyle: primaryTextStyle(context),
        labelText: hasLabel ? hint : null,
        labelStyle: primaryTextStyle(context),
        counterText: '',
        suffixIcon: icon != null
            ? Padding(
                padding: const EdgeInsets.only(right: 15),
                child: IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.zero,
                  icon: icon is String ? SvgPicture.asset(icon ?? '') : icon,
                  onPressed: () {
                    if (onTogglePasswordVisibility != null) {
                      onTogglePasswordVisibility!();
                    }
                  },
                ),
              )
            : const SizedBox.shrink(),
        prefixIcon: prefixIcon,
        suffixIconConstraints: const BoxConstraints(
            minWidth: 50, minHeight: 40, maxHeight: 40, maxWidth: 50),
        prefixIconConstraints: const BoxConstraints(
            minWidth: 40, minHeight: 40, maxHeight: 40, maxWidth: 40),
        errorText: err,
        fillColor: AppColors.accentSecondary,
        filled: isLight,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.alternate, width: 1),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.alternate, width: 1),
            borderRadius: BorderRadius.circular(8)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.alternate, width: 1),
            borderRadius: BorderRadius.circular(8)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.alternate, width: 1),
            borderRadius: BorderRadius.circular(8)),
      );

  TextStyle? primaryTextStyle(BuildContext context) => isLight
      ? context.theme.textTheme.titleSmall?.copyWith(
          color: AppColors.black, fontWeight: FontWeight.w400, fontSize: 12)
      : context.theme.textTheme.titleSmall
              ?.copyWith(fontWeight: FontWeight.w500, color: AppColors.black) ??
          const TextStyle();

  static InputDecoration secondaryDecoration({
    String? hint,
    String? err,
    bool? forceUpperCase,
    double borderRadius = 24,
    EdgeInsets? padding,
  }) =>
      InputDecoration(
        contentPadding: const EdgeInsets.only(bottom: 9),
        hintText: hint,
        hintStyle: const TextStyle(
            fontSize: 14,
            fontFamily: AppFonts.readexPro,
            color: AppColors.black,
            fontWeight: FontWeight.w500),
        counterText: '',
        errorText: err,
        suffixIconConstraints: const BoxConstraints(
            minWidth: 0, minHeight: 0, maxHeight: 0, maxWidth: 0),
        prefixIconConstraints: const BoxConstraints(
            minWidth: 0, minHeight: 0, maxHeight: 0, maxWidth: 0),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.black)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.black)),
        focusedErrorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.errorColor)),
        errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.errorColor)),
      );

  factory AppInput.secondary({
    String? text,
    String? hint,
    TextAlign? textAlign,
    TextInputType? type,
    int? maxLength,
    int? maxLines,
    int? minLines,
    TextEditingController? ted,
    String? err,
    Color? errColor,
    bool? enabled,
    bool? obscure,
    bool? autofocus,
    Widget? suffixIcon,
    TextInputAction? action,
    Function(bool)? onFocusChange,
    Function(String)? onChanged,
    Function(String)? onSubmit,
    InputDecoration? inputDecoration,
    bool? forceUpperCase,
    TextStyle? textStyle,
  }) =>
      AppInput(
        text: text,
        hint: hint,
        textAlign: textAlign,
        maxLength: maxLength,
        maxLines: maxLines,
        minLines: minLines,
        type: type,
        ted: ted,
        err: err,
        enabled: enabled,
        autofocus: autofocus,
        forceUpperCase: forceUpperCase,
        obscure: obscure,
        action: action,
        onChanged: onChanged,
        onSubmit: onSubmit,
        onFocusChange: onFocusChange,
        inputDecoration: secondaryDecoration(
            hint: hint, err: err, forceUpperCase: forceUpperCase),
        textStyle: textStyle,
        cursorColor: AppColors.bgSecondary,
      );
}
