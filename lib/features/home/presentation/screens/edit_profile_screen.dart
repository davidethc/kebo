import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/enums/gender_enum.dart';
import 'package:kebo_app/core/data/providers/user_provider.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_time.dart';
import 'package:kebo_app/core/utils/loading/loading_area.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/sheets/time_pickers/app_date_picker.dart';
import 'package:kebo_app/core/utils/widgets/app_input.dart';
import 'package:kebo_app/core/utils/widgets/buttons/app_state_aware_button.dart';
import 'package:kebo_app/core/utils/widgets/cached_image/cached_image.dart';
import 'package:kebo_app/features/home/presentation/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:kebo_app/features/onboarding/presentation/widgets/item_gender.dart';
import 'package:kebo_app/core/data/errors/app_input_errors.dart';
import '../../../../core/di/injection.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  UserProvider get userProvider => getIt<UserProvider>();
  late EditProfileCubit cubit;
  final nameController = TextEditingController();
  final familyNameController = TextEditingController();
  bool initial = false;

  @override
  void initState() {
    super.initState();
    cubit = context.read<EditProfileCubit>();
    cubit.initial();
  }

  void _blocListener(BuildContext context, EditProfileState state) {
    if (state.failure != null) {
      showFailureMessage(
        context,
        failure: state.failure!,
        onDismissed: cubit.onFlashBarDismissed,
      );
    }
    if (!initial) {
      nameController.text = state.currentUser?.name ?? '';
      familyNameController.text = state.currentUser?.familyName ?? '';
      initial = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditProfileCubit, EditProfileState>(
      listener: _blocListener,
      child: Scaffold(
        appBar: AppAppBar.withLeading(title: S.current.editProfie),
        body: BlocBuilder<EditProfileCubit, EditProfileState>(
          builder: (context, EditProfileState state) => LoadingArea(
            isLoading: state.isLoading,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                            border: Border.all(color: Colors.green, width: 2)),
                        child: CachedImage(
                          imageUrl: userProvider.currentUser.icon.trim(),
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    S.current.firstName,
                    style: context.theme.textTheme.bodyLarge
                        ?.copyWith(fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  AppInput.noLabel(
                    ted: nameController,
                    hint: S.current.firstName,
                    textAlign: TextAlign.start,
                    onChanged: cubit.onChangedName,
                    onFocusChange: cubit.onFocusChangedName,
                    err: state.errorName?.asString(context),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.lastName,
                    style: context.theme.textTheme.bodyLarge
                        ?.copyWith(fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  AppInput.noLabel(
                    ted: familyNameController,
                    hint: S.current.lastName,
                    textAlign: TextAlign.start,
                    onChanged: cubit.onChangedFamilyName,
                    onFocusChange: cubit.onFocusChangedFamilyName,
                    err: state.errorFamilyName?.asString(context),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.birthday,
                    style: context.theme.textTheme.bodyLarge
                        ?.copyWith(fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () => AppDatePicker.isReport(
                      mode: CupertinoDatePickerMode.date,
                    ).show(context).then((value) => cubit.onChangedDate(value)),
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.alternate),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          const Icon(Icons.date_range),
                          const SizedBox(width: 10),
                          Text(
                              state.birthDate != null
                                  ? state.birthDate!.formatddmmyyyy
                                  : S.current.birthday,
                              style: context.theme.textTheme.titleSmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.current.gender,
                    style: context.theme.textTheme.bodyLarge
                        ?.copyWith(fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      Gender.values.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(
                            right: index == Gender.values.length - 1 ? 0 : 20),
                        child: ItemGender(
                          gender: Gender.values[index],
                          selected: state.gender == Gender.values[index],
                          onTap: () =>
                              cubit.onChangedGender(Gender.values[index]),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  BlocBuilder<EditProfileCubit, EditProfileState>(
                    builder: (context, EditProfileState state) => Center(
                      child: SizedBox(
                        width: context.w * .7,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: AppStateAwareButton.primary(
                            onTap: () => cubit.onUpdate(),
                            label: S.current.update,
                            loading: state.isAnythingLoading,
                            enabled: state.isNothingLoading,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
