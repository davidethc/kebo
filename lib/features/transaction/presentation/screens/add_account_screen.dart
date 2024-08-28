import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/widgets/app_input.dart';
import 'package:kebo_app/core/utils/widgets/buttons/app_state_aware_button.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/add_account/add_account_cubit.dart';
import 'package:kebo_app/core/data/errors/app_input_errors.dart';
import 'package:pattern_formatter/numeric_formatter.dart';

class AddAccountScreen extends StatefulWidget {
  const AddAccountScreen({super.key});

  @override
  State<AddAccountScreen> createState() => _AddAccountScreenState();
}

class _AddAccountScreenState extends State<AddAccountScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late AddAccountCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = context.read<AddAccountCubit>();
  }

  void _blocListener(BuildContext context, AddAccountState state) {
    if (state.failure != null) {
      showFailureMessage(
        context,
        failure: state.failure!,
        onDismissed: cubit.onFlashBarDismissed,
      );
    }
    if (state.isDone) {
      context.navigate(AppScreens.detailAccount,
          arguments: {'id': state.id, 'hasManual': true});
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddAccountCubit, AddAccountState>(
      listener: _blocListener,
      child: Scaffold(
        appBar: AppAppBar.withLeading(title: S.current.manuallyAddAccount),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: context.h * .2),
              _buildForm(),
              const SizedBox(height: 20),
              BlocBuilder<AddAccountCubit, AddAccountState>(
                builder: (context, AddAccountState state) => SizedBox(
                  width: context.w * .7,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: AppStateAwareButton.primary(
                      onTap: () => cubit.onSubmit(),
                      label: S.current.continueText,
                      loading: state.isAnythingLoading,
                      enabled: state.isNothingLoading,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return BlocBuilder<AddAccountCubit, AddAccountState>(
      builder: (context, AddAccountState state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppInput(
            hint: S.current.name,
            textAlign: TextAlign.start,
            onChanged: cubit.onChangedName,
            onFocusChange: cubit.onFocusChangedName,
            err: state.errorName?.asString(context),
          ),
          const SizedBox(height: 10),
          AppInput(
            hint: S.of(context).description,
            textAlign: TextAlign.left,
            onChanged: cubit.onChangedDescription,
            onFocusChange: cubit.onFocusChangedDescription,
            err: state.errorDescription?.asString(context),
          ),
          const SizedBox(height: 10),
          AppInput(
            hint: S.current.balance,
            textAlign: TextAlign.start,
            type: TextInputType.number,
            inputFormatters: [
              ThousandsFormatter(formatter: NumberFormat('#,###', 'en'))
            ],
            onChanged: cubit.onChangedBalance,
            onFocusChange: cubit.onFocusChangedBalance,
            err: state.errorBalance?.asString(context),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
