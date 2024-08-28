import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:kebo_app/core/utils/dialog/feature_under_development.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/widgets/app_input.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/list_account/list_account_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/item_category.dart';

import '../widgets/loading_category.dart';

class ListAccountScreen extends StatefulWidget {
  const ListAccountScreen({super.key});

  @override
  State<ListAccountScreen> createState() => _ListAccountScreenState();
}

class _ListAccountScreenState extends State<ListAccountScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late ListAccountCubit cubit;

  @override
  void initState() {
    super.initState();

    cubit = context.read<ListAccountCubit>();
    cubit.initial();
  }

  void _blocListener(BuildContext context, ListAccountState state) {
    if (state.failure != null) {
      showFailureMessage(
        context,
        failure: state.failure!,
        onDismissed: cubit.onFlashBarDismissed,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ListAccountCubit, ListAccountState>(
      listener: _blocListener,
      child: Scaffold(
        appBar: AppAppBar.withLeading(title: S.current.selectYourAccount),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: AppInput(
                      textAlign: TextAlign.start,
                      hint: S.current.searchForYourAccount,
                      prefixIcon: const Icon(Icons.search),
                      onChanged: (value) => cubit.onChangedSearch(value),
                    ),
                  ),
                  IconButton(
                      onPressed: () => showFeatureUnderDevelopment(context),
                      icon: const Icon(Icons.search))
                ],
              ),
              const SizedBox(height: 10),
              _buildAccount(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAccount() {
    return BlocBuilder<ListAccountCubit, ListAccountState>(
      builder: (context, ListAccountState state) {
        final data = state.keyword.isEmpty ? state.institutions : state.result;
        return state.isLoading
            ? const LoadingCategory()
            : Expanded(
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.current.category,
                            textAlign: TextAlign.start,
                            style: context.theme.textTheme.bodyLarge?.copyWith(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 14),
                          ColumnBuilder(
                            data: data,
                            itemBuilder: (index) => ItemCategory(
                              onTap: () => context.navigate(
                                  AppScreens.connectAccount,
                                  arguments: data[index]),
                              institution: data[index],
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              );
      },
    );
  }
}
