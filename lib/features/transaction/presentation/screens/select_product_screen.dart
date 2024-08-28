import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/views/app_listview.dart';
import 'package:kebo_app/core/utils/widgets/buttons/app_state_aware_button.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/select_product/select_product_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/item_product.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/loading_category.dart';

class SelectProductScreen extends StatefulWidget {
  final String institution;
  const SelectProductScreen({super.key, required this.institution});

  @override
  State<SelectProductScreen> createState() => _SelectProductScreenState();
}

class _SelectProductScreenState extends State<SelectProductScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late SelectProductCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = context.read<SelectProductCubit>();
    cubit.initial(institution: widget.institution);
  }

  void _blocListener(BuildContext context, SelectProductState state) {
    if (state.failure != null) {
      showFailureMessage(
        context,
        failure: state.failure!,
        onDismissed: cubit.onFlashBarDismissed,
      );
    }
    if (state.isDone) {
      context.navigate(
        AppScreens.syncAccount,
        arguments: state.accounts[state.selected.first].link,
        offCurrentScreen: true,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SelectProductCubit, SelectProductState>(
      listener: _blocListener,
      child: Scaffold(
        appBar: AppAppBar.withLeading(title: S.current.selectYourProduct),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  S.current.whichProductDoYouWant,
                  style: context.theme.textTheme.bodyLarge
                      ?.copyWith(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                BlocBuilder<SelectProductCubit, SelectProductState>(
                  builder: (context, SelectProductState state) => Stack(
                    children: [
                      if (state.isLoading) const LoadingCategory(),
                      if (!state.isLoading && state.accounts.isNotEmpty)
                        ColumnBuilder(
                          data: state.accounts,
                          itemBuilder: (index) => ItemProduct(
                            product: state.accounts[index],
                            selected: state.selected.indexWhere(
                                    (element) => element == index) !=
                                -1,
                            onTap: () => cubit.onSelected(index),
                          ),
                        ),
                      if (!state.isLoading && state.accounts.isEmpty)
                        Text(S.current.noRecord)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar:
            BlocBuilder<SelectProductCubit, SelectProductState>(
          builder: (context, SelectProductState state) => Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: AppStateAwareButton.primary(
              onTap: () => cubit.onSubmit(),
              label: S.current.continueText,
              loading: state.isAnythingLoading,
              enabled: state.isNothingLoading,
            ),
          ),
        ),
      ),
    );
  }
}
