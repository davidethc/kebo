import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';

import '../../constants/theme/app_colors.dart';

class AppCodeInput extends StatelessWidget {
  final Function(String)? onChange;
  final Function(String)? onComplete;
  final bool? enabled;
  final bool? autofocus;
  final bool obscureText;
  final bool isPasscode;
  final TextEditingController? controller;
  const AppCodeInput({
    this.onChange,
    this.enabled,
    this.obscureText = false,
    this.autofocus,
    this.onComplete,
    Key? key,
    this.controller,
  })  : isPasscode = false,
        super(key: key);
  const AppCodeInput.passCode({
    this.onChange,
    this.enabled,
    this.obscureText = true,
    this.autofocus = true,
    this.onComplete,
    Key? key,
    this.controller,
  })  : isPasscode = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      controller: controller,
      length: 6,
      obscureText: obscureText,
      autoFocus: autofocus == true,
      enabled: enabled != false,
      animationType: AnimationType.fade,
      keyboardType: TextInputType.number,
      cursorHeight: isPasscode ? 0 : 35,
      pinTheme: PinTheme(
        activeColor: isPasscode ? AppColors.accentPrimary : AppColors.greyLight,
        fieldHeight: isPasscode ? 20 : 45,
        fieldWidth: isPasscode ? 20 : 40,
        fieldOuterPadding: EdgeInsets.zero,
        selectedColor:
            isPasscode ? AppColors.accentPrimary : AppColors.greyLight,
        selectedFillColor: Colors.transparent,
        inactiveColor:
            isPasscode ? AppColors.accentPrimary : AppColors.greyLight,
        disabledColor:
            isPasscode ? AppColors.accentPrimary : AppColors.greyLight,
        activeFillColor:
            isPasscode ? AppColors.accentPrimary : Colors.transparent,
        inactiveFillColor: Colors.transparent,
        shape: isPasscode ? PinCodeFieldShape.circle : PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        borderWidth: 1,
        inactiveBorderWidth: 1,
        errorBorderWidth: 1,
        activeBorderWidth: 1,
        disabledBorderWidth: 1,
        selectedBorderWidth: 1,
      ),
      textStyle: isPasscode
          ? context.theme.textTheme.titleMedium
              ?.copyWith(fontWeight: FontWeight.w700, color: Colors.transparent)
          : context.theme.textTheme.titleMedium
              ?.copyWith(fontWeight: FontWeight.w700),
      backgroundColor: Colors.transparent,
      cursorColor: AppColors.black,
      animationDuration: const Duration(milliseconds: 350),
      enableActiveFill: true,
      onCompleted: (value) {
        if (onComplete != null) onComplete!(value);
      },
      onChanged: (value) {
        if (onChange != null) onChange!(value);
      },
      beforeTextPaste: (String? text) {
        return text != null &&
            text.isNotEmpty &&
            text.trim().length == 6 &&
            RegExp(r'^[0-9]$').hasMatch(text);
      },
    );
  }
}
