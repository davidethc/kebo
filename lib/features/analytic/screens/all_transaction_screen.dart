import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/views/app_listview.dart';
import 'package:kebo_app/features/analytic/cubit/all_transaction/all_transaction_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/item_transaction.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/loading_transaction.dart';

class AllTransacitonScreen extends StatefulWidget {
  const AllTransacitonScreen({super.key});

  @override
  State<AllTransacitonScreen> createState() => _AllTransacitonScreenState();
}

class _AllTransacitonScreenState extends State<AllTransacitonScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late AllTransactionCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = context.read<AllTransactionCubit>();
    cubit.initial();
  }

  void _blocListener(BuildContext context, AllTransactionState state) {
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
    return BlocListener<AllTransactionCubit, AllTransactionState>(
      listener: _blocListener,
      child: Scaffold(
        appBar: AppAppBar.withLeading(title: S.current.transactions),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                S.current.transactions,
                style:
                    context.theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            BlocBuilder<AllTransactionCubit, AllTransactionState>(
              builder: (context, AllTransactionState state) => state.isLoading
                  ? const LoadingTransaction()
                  : Expanded(
                      child: AppListView.onRefresh(
                        data: state.transactions,
                        onLoadMore: () => cubit.onLoadMoreTransaction(),
                        onRefresh: () => cubit.initial(),
                        renderItem: (item, index) => ItemTransaction(
                          transaction: state.transactions[index],
                          onTap: () => Navigator.pushNamed(
                              context, AppScreens.detailTransaction,
                              arguments: state.transactions[index]),
                          onDelete: () {},
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
