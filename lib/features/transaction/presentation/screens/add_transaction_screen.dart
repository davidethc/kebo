import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/enums/type_transaction.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/loading/loading_area.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/sheets/time_pickers/app_date_picker.dart';
import 'package:kebo_app/core/utils/widgets/app_input.dart';
import 'package:kebo_app/core/utils/widgets/buttons/app_state_aware_button.dart';
import 'package:kebo_app/core/data/errors/app_input_errors.dart';
import 'package:kebo_app/core/utils/widgets/dropdown/dropdown.dart';

import 'package:kebo_app/features/transaction/presentation/cubit/add_transaction/add_transaction_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/dropdown_title.dart';
import 'package:pattern_formatter/numeric_formatter.dart';

class AddTransactionScreen extends StatefulWidget {
  final String id;
  const AddTransactionScreen({
    super.key,
    required this.id,
  });

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late AddTransactionCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = context.read<AddTransactionCubit>();
    cubit.initial();
  }

  void _blocListener(BuildContext context, AddTransactionState state) {
    if (state.failure != null) {
      showFailureMessage(
        context,
        failure: state.failure!,
        onDismissed: cubit.onFlashBarDismissed,
      );
    }
    if (state.isDone) {
      Navigator.pop(context, 'true');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddTransactionCubit, AddTransactionState>(
      listener: _blocListener,
      child: Scaffold(
        appBar: AppAppBar.withLeading(title: S.current.manuallyAddTransactions),
        body: BlocBuilder<AddTransactionCubit, AddTransactionState>(
          builder: (context, AddTransactionState state) => LoadingArea(
            isLoading: state.isLoading,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    _buildForm(),
                    const SizedBox(height: 50),
                    BlocBuilder<AddTransactionCubit, AddTransactionState>(
                      builder: (context, AddTransactionState state) => SizedBox(
                        width: context.w * .7,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: AppStateAwareButton.primary(
                            onTap: () => cubit.onSubmit(widget.id),
                            label: S.current.continueText,
                            loading: state.isAnythingLoading,
                            enabled: state.isNothingLoading,
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
      ),
    );
  }

  Widget _buildForm() {
    return BlocBuilder<AddTransactionCubit, AddTransactionState>(
      builder: (context, AddTransactionState state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownTitle(
            currentIndex: state.indexType,
            isError: state.errorType,
            onChange: (value, index) => cubit.onChangedType(index),
            items: state.type
                .map((e) => DropdownItem(value: e, child: Text(e.asString())))
                .toList(),
            child: Text(
              state.indexType == -1
                  ? S.current.type
                  : state.type[state.indexType].asString(),
              style: context.theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w500, color: AppColors.black),
            ),
          ),
          const SizedBox(height: 10),
          DropdownTitle(
            currentIndex: state.indexCategory,
            isError: state.errorCategory,
            onChange: (value, index) => cubit.onChangedCategory(index),
            items: state.categories
                .map((e) => DropdownItem(value: e, child: Text(e.id)))
                .toList(),
            child: Text(
              state.indexCategory == -1
                  ? S.current.category
                  : state.categories[state.indexCategory].id,
              style: context.theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w500, color: AppColors.black),
            ),
          ),
          const SizedBox(height: 10),
          DropdownTitle(
            currentIndex: state.indexSubcategory,
            isError: state.errorSubcategory,
            onChange: (value, index) => cubit.onChangedSubcategory(index),
            items: state.subcategories
                .map((e) => DropdownItem(value: e, child: Text(e.subcategoria)))
                .toList(),
            child: Text(
              state.indexSubcategory == -1
                  ? S.current.subcategory
                  : state.subcategories[state.indexSubcategory].subcategoria,
              style: context.theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w500, color: AppColors.black),
            ),
          ),
          const SizedBox(height: 10),
          AppInput(
            hint: S.current.merchant,
            textAlign: TextAlign.start,
            onChanged: cubit.onChangedMerchant,
            onFocusChange: cubit.onFocusChangedMerchant,
            err: state.errorMerchant?.asString(context),
          ),
          const SizedBox(height: 10),
          AppInput(
            hint: S.current.merchantWebsite,
            textAlign: TextAlign.start,
            onChanged: cubit.onChangedMerchantWebsite,
            onFocusChange: cubit.onFocusChangedMerchantWebsite,
            err: state.errorMerchantWebsite?.asString(context),
          ),
          const SizedBox(height: 10),
          AppInput(
            hint: S.current.amount,
            type: TextInputType.number,
            inputFormatters: [
              ThousandsFormatter(formatter: NumberFormat('#,###', 'en'))
            ],
            textAlign: TextAlign.start,
            onChanged: cubit.onChangedAmount,
            onFocusChange: cubit.onFocusChangedAmount,
            err: state.errorAmount?.asString(context),
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
          GestureDetector(
            onTap: () => AppDatePicker(
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
                      state.valueDate != null
                          ? state.valueDate!.formatddmmyyyy
                          : S.current.birthday,
                      style: context.theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w500, color: AppColors.black)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
