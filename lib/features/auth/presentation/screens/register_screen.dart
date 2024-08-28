import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:kebo_app/core/constants/app_asset_images.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/enums/age_enum.dart';
import 'package:kebo_app/core/data/enums/gender_enum.dart';
import 'package:kebo_app/core/data/local/local_data.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/dialog/feature_under_development.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_widget.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/widgets/app_code_input.dart';
import 'package:kebo_app/core/utils/widgets/app_input.dart';
import 'package:kebo_app/core/utils/widgets/buttons/app_state_aware_button.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';
import 'package:kebo_app/features/auth/presentation/cubit/register/register_cubit.dart';
import 'package:kebo_app/features/onboarding/presentation/widgets/bottom_space.dart';
import 'package:kebo_app/features/onboarding/presentation/widgets/item_gender.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:kebo_app/core/data/errors/app_input_errors.dart';
import '../../../onboarding/presentation/widgets/item_onboarding.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with FlashBarMixin {
  late RegisterCubit cubit;
  int get maxPage => 9;

  @override
  void initState() {
    super.initState();
    cubit = context.read<RegisterCubit>();
  }

  void _blocListener(BuildContext context, RegisterState state) {
    if (state.authFailure != null) {
      showFailureMessage(
        context,
        failure: state.authFailure!,
        onDismissed: cubit.onFlashBarDismissed,
      );
    }
    if (state.isDone) {
      context.navigate(AppScreens.complete, clearStack: true);
    }
    if (state.isBack) {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: _blocListener,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 20),
              BlocBuilder<RegisterCubit, RegisterState>(
                builder: (context, RegisterState state) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => cubit.onBack(),
                        icon: const Icon(Icons.arrow_back_ios_rounded),
                      ),
                      LinearPercentIndicator(
                        percent: (state.currentPage + 1) / maxPage,
                        width: 120,
                        lineHeight: 8,
                        animation: true,
                        animateFromLastPercent: true,
                        progressColor: AppColors.accentPrimary,
                        backgroundColor: const Color(0xFFE9E9E9),
                        barRadius: const Radius.circular(12),
                        padding: EdgeInsets.zero,
                      ),
                      TextButton(
                        onPressed: () {
                          context.navigate(AppScreens.login, clearStack: true);
                          LocalDataHelper.instance.setSeen(true);
                        },
                        child: Text(
                          S.current.skip,
                          style: context.theme.textTheme.titleSmall
                              ?.copyWith(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BlocBuilder<RegisterCubit, RegisterState>(
                builder: (context, RegisterState state) => Expanded(
                  child: IndexedStack(
                    index: state.currentPage,
                    children: [
                      _buildEmail(),
                      _buildInfo(),
                      _buildGender(),
                      _buildAge(),
                      _buildPassword(),
                      _buildPhone(),
                      _buildOTP(),
                      _buildEnableFaceID(),
                      _buildNotification(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmail() {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, RegisterState state) => Column(
        children: [
          if (!context.hasKeyboardPopUp) ...[
            const Spacer(),
            Text(
              S.current.step('${state.currentPage + 1}/$maxPage'),
              style: context.theme.textTheme.titleSmall?.copyWith(fontSize: 14),
            ),
            const SizedBox(height: 14),
            Text(
              S.current.typeYourEmail,
              style: context.theme.textTheme.bodyLarge
                  ?.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 14),
            Text(
              S.current.pleaseEnterValidEmail,
              textAlign: TextAlign.center,
              style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 14),
            ),
            const Spacer(),
          ] else
            const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3)),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                AppInput(
                  type: TextInputType.emailAddress,
                  hint: S.current.email,
                  textAlign: TextAlign.start,
                  onChanged: cubit.onChangedEmail,
                  onFocusChange: cubit.onFocusChangedEmail,
                  err: state.errorEmail?.asString(context),
                ),
                const SizedBox(height: 20),
                // Text(
                //   S.current.orRegisterWith,
                //   textAlign: TextAlign.center,
                //   style: context.theme.textTheme.bodyLarge
                //       ?.copyWith(fontSize: 14, color: AppColors.secondaryText),
                // ),
                //   const SizedBox(height: 20),
                //   ElevatedButton.icon(
                //     icon: const Icon(FontAwesomeIcons.google,
                //         color: AppColors.black),
                //     label: Text(
                //       S.current.continueWithGoogle,
                //       style: context.theme.textTheme.titleMedium
                //           ?.copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                //     ),
                //     onPressed: () => cubit.onRegisterSocial(RegisterType.google),
                //     style: ElevatedButton.styleFrom(
                //       minimumSize: Size(context.w * .7, 52),
                //       elevation: 0,
                //       backgroundColor: Colors.white,
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(40),
                //         side: const BorderSide(
                //             width: 2, color: AppColors.alternate),
                //       ),
                //     ),
                //   ),
                //   if (Platform.isIOS) ...[
                //     const SizedBox(height: 20),
                //     ElevatedButton.icon(
                //       icon: const Icon(FontAwesomeIcons.apple,
                //           color: AppColors.black),
                //       label: Text(
                //         S.current.continueWithApple,
                //         style: context.theme.textTheme.titleMedium
                //             ?.copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                //       ),
                //       onPressed: () => cubit.onRegisterSocial(RegisterType.apple),
                //       style: ElevatedButton.styleFrom(
                //         minimumSize: Size(context.w * .7, 52),
                //         elevation: 0,
                //         backgroundColor: Colors.white,
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(40),
                //           side: const BorderSide(
                //               width: 2, color: AppColors.alternate),
                //         ),
                //       ),
                //     ),
                //   ],
                //   const SizedBox(height: 30),
              ],
            ),
          ),
          const Spacer(),
          Center(
            child: SizedBox(
              width: context.w * 0.7,
              child: AppStateAwareButton.primary(
                onTap: () => cubit.onSubmitEmail(),
                label: S.current.continueText,
                loading: state.isAnythingLoading,
                enabled: state.isNothingLoading,
              ),
            ),
          ),
          const Spacer(),
          const BottomSpace(),
        ],
      ),
    );
  }

  Widget _buildInfo() {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, RegisterState state) => Column(
        children: [
          if (!context.hasKeyboardPopUp) ...[
            const Spacer(),
            Text(
              S.current.step('${state.currentPage + 1}/$maxPage'),
              style: context.theme.textTheme.titleSmall?.copyWith(fontSize: 14),
            ),
            const SizedBox(height: 14),
            Text(
              S.current.typeYourEmail,
              style: context.theme.textTheme.bodyLarge
                  ?.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 14),
            Text(
              S.current.pleaseEnterValidEmail,
              textAlign: TextAlign.center,
              style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 14),
            ),
            const Spacer(),
          ] else
            const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3)),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                AppInput(
                  hint: S.current.firstName,
                  textAlign: TextAlign.start,
                  onChanged: cubit.onChangedFirstName,
                  onFocusChange: cubit.onFocusChangedFirstName,
                  err: state.errorFirstName?.asString(context),
                ),
                const SizedBox(height: 14),
                AppInput(
                  hint: S.current.lastName,
                  textAlign: TextAlign.start,
                  onChanged: cubit.onChangedLastName,
                  onFocusChange: cubit.onFocusChangedLastName,
                  err: state.errorLastName?.asString(context),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const Spacer(),
          Center(
            child: SizedBox(
              width: context.w * .7,
              child: AppStateAwareButton.primary(
                onTap: () => cubit.onSubmitInfo(),
                label: S.current.continueText,
                loading: false,
                enabled: true,
              ),
            ),
          ),
          const Spacer(),
          const BottomSpace(),
        ],
      ),
    );
  }

  Widget _buildGender() {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, RegisterState state) => Column(
        children: [
          const Spacer(),
          Text(
            S.current.step('${state.currentPage + 1}/$maxPage'),
            style: context.theme.textTheme.titleSmall?.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 14),
          Text(
            S.current.howDoYouIdentify,
            style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              Gender.values.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                    right: index == Gender.values.length - 1 ? 0 : 20),
                child: ItemGender(
                  gender: Gender.values[index],
                  selected: state.gender == Gender.values[index],
                  onTap: () => cubit.onChangedGender(Gender.values[index]),
                ),
              ),
            ),
          ),
          if (state.errorGender) ...[
            const SizedBox(height: 10),
            Text(
              'Please choose gender',
              style: context.theme.textTheme.bodyLarge
                  ?.copyWith(color: AppColors.errorColor, fontSize: 12),
            )
          ],
          const Spacer(),
          Image.asset(
            AppAssetImages.welcome,
            height: context.h * .25,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: Text(
              S.current.weWouldLikeToKnowGender,
              textAlign: TextAlign.center,
              style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 14),
            ),
          ),
          const Spacer(),
          Center(
            child: SizedBox(
              width: context.w * .7,
              child: AppStateAwareButton.primary(
                onTap: () => cubit.onSubmitGender(),
                label: S.current.continueText,
                loading: false,
                enabled: true,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: context.w * .8,
              child: AppStateAwareButton.icon(
                onTap: () => cubit.onSkipGender(),
                label: Center(
                  child: FittedBox(
                    child: Text(
                      S.current.iPreferNotToChoose,
                      style: context.theme.textTheme.bodyLarge?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.accentPrimary),
                    ),
                  ),
                ),
                loading: false,
                enabled: true,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildAge() {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, RegisterState state) => Column(
        children: [
          const Spacer(),
          Text(
            S.current.step('${state.currentPage + 1}/$maxPage'),
            style: context.theme.textTheme.titleSmall?.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 14),
          Text(
            S.current.whatIsYourDateOfBirth,
            style: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.w * .2),
            child: ColumnBuilder(
              data: AgeEnum.values,
              itemBuilder: (index) => GestureDetector(
                onTap: () => cubit.onChangedAge(index),
                child: Row(
                  children: [
                    state.selectedAge == index
                        ? const Icon(Icons.radio_button_checked,
                            color: AppColors.accentPrimary)
                        : const Icon(Icons.radio_button_off),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        AgeEnum.values[index].asString(),
                        style: context.theme.textTheme.bodyLarge
                            ?.copyWith(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(flex: 2),
          Center(
            child: SizedBox(
              width: context.w * .7,
              child: AppStateAwareButton.primary(
                onTap: () => cubit.onSubmitAge(),
                label: S.current.continueText,
                loading: false,
                enabled: true,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildPassword() {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, RegisterState state) => Column(
        children: [
          if (!context.hasKeyboardPopUp) const Spacer(),
          Text(
            S.current.step('${state.currentPage + 1}/$maxPage'),
            style: context.theme.textTheme.titleSmall?.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 14),
          Text(
            S.current.createYourPassword,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 14),
          if (!context.hasKeyboardPopUp) ...[
            Text(
              S.current.enterSecurePassword,
              textAlign: TextAlign.center,
              style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 14),
            ),
            const SizedBox(height: 30),
            Image.asset(
              AppAssetImages.password,
              height: context.h * .15,
            ),
            const Spacer(),
          ],
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3)),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                AppInput(
                  hint: S.current.password,
                  textAlign: TextAlign.start,
                  obscure: true,
                  onChanged: cubit.onChangedPassword,
                  onFocusChange: cubit.onFocusChangedPassword,
                  onTogglePasswordVisibility: cubit.onTogglePasswordVisibility,
                  showPassword: state.passwordVisibilityStatus,
                  type: TextInputType.visiblePassword,
                  err: state.errorPassword?.asString(context),
                  icon: const Icon(Icons.remove_red_eye_outlined,
                      color: Colors.black),
                ),
                const SizedBox(height: 14),
                AppInput(
                  hint: S.current.confirmPassword,
                  textAlign: TextAlign.start,
                  obscure: true,
                  onChanged: cubit.onChangedConfirmPassword,
                  onFocusChange: cubit.onFocusChangedConfirmPassword,
                  onTogglePasswordVisibility:
                      cubit.onToggleConfirmPasswordVisibility,
                  showPassword: state.confirmPasswordVisibilityStatus,
                  type: TextInputType.visiblePassword,
                  err: state.errorConfirmPassword?.asString(context),
                  icon: const Icon(Icons.remove_red_eye_outlined,
                      color: Colors.black),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const Spacer(),
          Center(
            child: SizedBox(
              width: context.w * .7,
              child: AppStateAwareButton.primary(
                onTap: () => cubit.onSubmitPassword(),
                label: S.current.continueText,
                loading: false,
                enabled: true,
              ),
            ),
          ),
          const Spacer(flex: 2),
          const BottomSpace(),
        ],
      ),
    );
  }

  Widget _buildPhone() {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, RegisterState state) => Column(
        children: [
          if (!context.hasKeyboardPopUp) const Spacer(),
          Text(
            S.current.step('${state.currentPage + 1}/$maxPage'),
            style: context.theme.textTheme.titleSmall?.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 14),
          Text(
            S.current.inputYourPhone,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 14),
          Text(
            S.current.pleaseEnterValidNumber,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
          ),
          const SizedBox(height: 20),
          if (!context.hasKeyboardPopUp)
            Image.asset(
              AppAssetImages.phone,
              height: context.h * .22,
            ),
          if (!context.hasKeyboardPopUp) const Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                const SizedBox(width: 16),
                SizedBox(
                  height: 48,
                  width: 48,
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) =>
                        cubit.onChangeCountryCode(number.phoneNumber ?? ''),
                    textStyle: context.theme.textTheme.bodyLarge
                        ?.copyWith(fontSize: 14),
                    selectorTextStyle: context.theme.textTheme.bodyLarge
                        ?.copyWith(fontSize: 14),
                    selectorConfig: const SelectorConfig(
                        showFlags: true,
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        useBottomSheetSafeArea: true,
                        leadingPadding: 0),
                    ignoreBlank: false,
                    inputBorder: InputBorder.none,
                    formatInput: false,
                  ),
                ),
                Expanded(
                  child: AppInput(
                    inputDecoration: InputDecoration(
                      hintText: S.current.phone,
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                      hintStyle: context.theme.textTheme.bodyLarge?.copyWith(
                          fontSize: 16, color: const Color(0xff999DA3)),
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      counterText: '',
                    ),
                    type: TextInputType.number,
                    textAlign: TextAlign.start,
                    onChanged: cubit.onChangedPhone,
                    onFocusChange: cubit.onFocusChangedPhone,
                    err: state.errorPhone?.asString(context),
                  ),
                ),
              ],
            ),
          ),
          if (state.errorPhone != null) ...[
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  state.errorPhone?.asString(context) ?? '',
                  style: context.theme.textTheme.bodyLarge
                      ?.copyWith(fontSize: 12, color: AppColors.errorColor),
                ),
              ),
            )
          ],
          const Spacer(flex: 2),
          Center(
            child: SizedBox(
              width: context.w * .7,
              child: AppStateAwareButton.primary(
                onTap: () => cubit.onSubmitPhone(),
                label: S.current.continueText,
                loading: state.isAnythingLoading,
                enabled: state.isNothingLoading,
              ),
            ),
          ),
          const Spacer(),
          const BottomSpace(),
        ],
      ),
    );
  }

  Widget _buildOTP() {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, RegisterState state) => Column(
        children: [
          if (!context.hasKeyboardPopUp) const Spacer(),
          Text(
            S.current.step('${state.currentPage + 1}/$maxPage'),
            style: context.theme.textTheme.titleSmall?.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 14),
          Text(
            S.current.verifyYourPhone,
            style: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 14),
          Text(
            S.current.weWillTextYouNumber('\n${state.phoneNumber}'),
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
          ),
          if (!context.hasKeyboardPopUp)
            Image.asset(
              AppAssetImages.otp,
              height: context.h * .25,
            ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: AppCodeInput(
              obscureText: false,
              enabled: true,
              onChange: (String? value) => cubit.onChangedOTP(value!),
              onComplete: (String? value) => FocusScope.of(context).unfocus(),
            ),
          ),
          const Spacer(),
          Center(
            child: SizedBox(
              width: context.w * .7,
              child: AppStateAwareButton.primary(
                onTap: () => cubit.onSubmitOTP(),
                label: S.current.continueText,
                loading: state.isAnythingLoading,
                enabled: state.isNothingLoading && state.otp.isNotEmpty,
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: SizedBox(
              width: context.w * .7,
              child: AppStateAwareButton.icon(
                onTap: () => cubit.onResentOTP(),
                label: Center(
                  child: Text(
                    S.current.sendNewCode,
                    style: context.theme.textTheme.bodyLarge?.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.accentPrimary),
                  ),
                ),
                loading: false,
                enabled: true,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildEnableFaceID() {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, RegisterState state) => Column(
        children: [
          const Spacer(),
          Text(
            S.current.step('${state.currentPage + 1}/$maxPage'),
            style: context.theme.textTheme.titleSmall?.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 14),
          Text(
            S.current.enableBiometricAuthentication,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 14),
          Text(
            S.current.ifYouEnableThisOption,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
          ),
          const Spacer(),
          Image.asset(
            AppAssetImages.biometric,
            height: context.h * .3,
          ),
          const Spacer(),
          Center(
            child: SizedBox(
              width: context.w * .7,
              child: AppStateAwareButton.primary(
                onTap: () => cubit.onEnableBiometric(),
                label: S.current.continueText,
                loading: false,
                enabled: true,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildNotification() {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, RegisterState state) => Column(
        children: [
          const Spacer(),
          Text(
            S.current.step('${state.currentPage + 1}/$maxPage'),
            style: context.theme.textTheme.titleSmall?.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 14),
          Text(
            S.current.doYouWantEnableNotification,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          Image.asset(
            AppAssetImages.notification,
            height: context.h * .3,
          ),
          const SizedBox(height: 30),
          ColumnBuilder(
            data: onboardings,
            separatorItem: const SizedBox.shrink(),
            itemBuilder: (index) => ItemOnboarding(
              data: onboardings[index],
            ),
          ),
          const Spacer(flex: 2),
          Center(
            child: SizedBox(
              width: context.w * .7,
              child: AppStateAwareButton.primary(
                onTap: () => cubit.onComplete(),
                label: S.current.activate,
                loading: false,
                enabled: true,
              ),
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }

  List<dynamic> get onboardings => [
        {
          'icon': Icons.notifications,
          'content': S.current.expenseAndBudgetAlerts,
        },
        {
          'icon': Icons.spa,
          'content': S.current.expenseAndIncomeAnalysis,
        },
        {
          'icon': Icons.personal_video_outlined,
          'content': S.current.personalizedRecommendations
        },
      ];
}
