import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/constants/app_asset_images.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/constants/theme/app_fonts.dart';
import 'package:kebo_app/core/data/entities/institution_entity/institution_entity.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/loading/loading_area.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/widgets/app_input.dart';
import 'package:kebo_app/core/utils/widgets/buttons/app_state_aware_button.dart';
import 'package:kebo_app/core/utils/widgets/dropdown/dropdown.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/connect_account/connect_account_cubit.dart';

class ConnectAccountScreen extends StatefulWidget {
  final InstitutionEntity institution;
  const ConnectAccountScreen({
    super.key,
    required this.institution,
  });

  @override
  State<ConnectAccountScreen> createState() => _ConnectAccountScreenState();
}

class _ConnectAccountScreenState extends State<ConnectAccountScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late ConnectAccountCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<ConnectAccountCubit>();
    cubit.initial(institution: widget.institution);
  }

  void _blocListener(BuildContext context, ConnectAccountState state) {
    if (state.failure != null) {
      showFailureMessage(
        context,
        failure: state.failure!,
        onDismissed: cubit.onFlashBarDismissed,
      );
    }
    if (state.isDone) {
      context.navigate(AppScreens.selectProduct,
          offCurrentScreen: true, arguments: widget.institution.name);
    }
    if (state.processing) {
      context.navigate(
        AppScreens.syncAccount,
        arguments: widget.institution.code,
        offCurrentScreen: true,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectAccountCubit, ConnectAccountState>(
      listener: _blocListener,
      child: Scaffold(
        body: BlocBuilder<ConnectAccountCubit, ConnectAccountState>(
          builder: (context, ConnectAccountState state) => LoadingArea(
            isLoading: state.isLoading,
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => context.pop(),
                        icon: const Icon(Icons.arrow_back_rounded),
                      ),
                      const Spacer(),
                      Image.asset(
                        AppAssetImages.logo,
                        height: context.h * .15,
                      ),
                      const Spacer(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.current.connectYourAccount,
                          style: context.theme.textTheme.bodyLarge?.copyWith(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          S.current.enterYourCredentials,
                          style: context.theme.textTheme.bodyLarge
                              ?.copyWith(fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        _buildForm(),
                        const SizedBox(height: 14),
                        BlocBuilder<ConnectAccountCubit, ConnectAccountState>(
                          builder: (context, ConnectAccountState state) =>
                              AppStateAwareButton.primary(
                            onTap: () => cubit.onAddAccount(),
                            label: S.current.link,
                            loading: state.isAnythingLoading,
                            enabled: state.isNothingLoading,
                          ),
                        ),
                        const SizedBox(height: 30),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: S.current.byContinuing,
                                style: context.theme.textTheme.bodyLarge
                                    ?.copyWith(fontSize: 16),
                              ),
                              TextSpan(
                                text: S.current.belvo,
                                style: context.theme.textTheme.bodyLarge
                                    ?.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.accentPrimary),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                        AppStateAwareButton.icon(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffa5a5a5))),
                          onTap: () => context.navigate(AppScreens.addAccount),
                          label: Center(
                            child: Text(
                              S.current.manuallyAddAccount,
                              style: context.theme.textTheme.bodyLarge
                                  ?.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.white),
                            ),
                          ),
                          loading: false,
                          enabled: true,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return BlocBuilder<ConnectAccountCubit, ConnectAccountState>(
      builder: (context, ConnectAccountState state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (state.usernameTypeForm != null) ...[
            const SizedBox(height: 10),
            CustomDropdown(
              dropdownButtonStyle: DropdownButtonStyle(
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  width: context.w,
                  borderColor: Colors.transparent),
              dropdownStyle: const DropdownStyle(
                  padding: EdgeInsets.zero, color: Colors.white),
              onChange: (element, index) => cubit.onChangedType(index),
              items: state.listType
                  .map(
                    (e) => DropdownItem(
                      child: Text(e.label),
                    ),
                  )
                  .toList(),
              currentIndex: state.selectedType,
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.alternate)),
                child: Row(
                  children: [
                    Text(
                        state.selectedType == -1
                            ? state.usernameTypeForm?.placeholder ?? ''
                            : state.listType[state.selectedType].label,
                        style: context.theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.black)),
                    const Spacer(),
                    const Icon(Icons.arrow_drop_down, color: Colors.black),
                  ],
                ),
              ),
            ),
            if (state.errorUsernameType) ...[
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(S.current.inputErrorRequiredEmpty,
                    style: const TextStyle(
                        color: AppColors.errorColor,
                        fontFamily: AppFonts.outfit,
                        fontWeight: FontWeight.w400,
                        fontSize: 10)),
              ),
            ],
          ],
          if (state.usernameForm != null) ...[
            const SizedBox(height: 10),
            AppInput(
              hint: state.selectedType != -1
                  ? state.listType[state.selectedType].label
                  : state.usernameForm?.label,
              textAlign: TextAlign.start,
              onChanged: cubit.onChangedUsername,
              onFocusChange: cubit.onFocusChangedUsername,
              err: state.errorUsername,
            ),
          ],
          if (state.passwordForm != null) ...[
            const SizedBox(height: 10),
            AppInput(
              hint: state.passwordForm?.label,
              textAlign: TextAlign.left,
              obscure: true,
              onChanged: cubit.onChangedPassword,
              onFocusChange: cubit.onFocusChangedPassword,
              onTogglePasswordVisibility: cubit.onTogglePasswordVisibility,
              showPassword: state.passwordVisibilityStatus,
              type: TextInputType.visiblePassword,
              err: state.errorPassword,
              icon: const Icon(Icons.remove_red_eye_outlined,
                  color: Colors.black),
            ),
          ],
          if (state.tokenForm != null) ...[
            const SizedBox(height: 10),
            AppInput(
              hint: state.tokenForm?.label,
              textAlign: TextAlign.start,
              onChanged: cubit.onChangedToken,
              onFocusChange: cubit.onFocusChangedToken,
              err: state.errorToken,
              type: TextInputType.number,
            ),
          ]
        ],
      ),
    );
  }
}
