import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/entities/entities.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/dialog/confirm_dialog.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_widget.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/loading/loading_area.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/views/loadmore_view.dart';
import 'package:kebo_app/core/utils/widgets/buttons/app_state_aware_button.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/transaction/transaction_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/item_account.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/item_transaction.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/loading_account.dart';

import '../widgets/loading_transaction.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late TransactionCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = context.read<TransactionCubit>();
    cubit.initial();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  void _blocListener(BuildContext context, TransactionState state) {
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
    return BlocListener<TransactionCubit, TransactionState>(
      listener: _blocListener,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            S.current.transactions,
            style: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          elevation: 0.0,
        ),
        body: BlocBuilder<TransactionCubit, TransactionState>(
          builder: (context, TransactionState state) => LoadingArea(
            isLoading: state.isProcessing,
            child: LoadMoreView(
              onLoadMore: () => cubit.onLoadMoreTransaction(),
              onRefresh: () => cubit.initial(),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    _buildBalance(),
                    const SizedBox(height: 20),
                    Center(
                      child: SizedBox(
                        width: context.w / 2,
                        child: AppStateAwareButton.secondary(
                          onTap: () => context.navigate(AppScreens.listAccount),
                          label: S.current.addAccount,
                          loading: false,
                          enabled: true,
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation1']!),
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildAccount(),
                    const SizedBox(height: 10),
                    _buildTransaction(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAccount() {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, TransactionState state) {
        List<AccountEntity> accounts = [];
        if (state.accounts.isNotEmpty) {
          accounts = state.isShowMore
              ? state.accounts
              : state.accounts.length > 3
                  ? state.accounts.getRange(0, 3).toList()
                  : state.accounts;
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            Stack(
              children: [
                if (state.isLoadingAccount)
                  const LoadingAccount().animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                if (!state.isLoadingAccount && accounts.isNotEmpty)
                  ColumnBuilder(
                    data: accounts,
                    separatorItem: const SizedBox.shrink(),
                    itemBuilder: (index) => ItemAccount(
                      account: state.accounts[index],
                      onDelete: () => showConfirmDialog(
                        context,
                        title: S.current.notification,
                        content: S.current.doYouWantDeleteAccount,
                        onTap: () =>
                            cubit.onDeleteAccount(state.accounts[index].id),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                if (!state.isLoadingAccount && accounts.isEmpty)
                  Center(child: Text(S.current.noRecord)),
              ],
            ),
            if (state.accounts.length > 3 && !state.isLoadingAccount)
              Center(
                child: GestureDetector(
                  onTap: () => cubit.onShowMore(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.accentPrimary)),
                    child: Text(
                      state.isShowMore
                          ? S.current.showLess
                          : S.current.showMore,
                      style: context.theme.textTheme.bodyLarge
                          ?.copyWith(color: AppColors.accentPrimary),
                    ),
                  ),
                ),
              ),
            const Divider(),
          ],
        );
      },
    );
  }

  Widget _buildTransaction() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            S.current.transactions,
            style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
        const SizedBox(height: 14),
        BlocBuilder<TransactionCubit, TransactionState>(
          builder: (context, TransactionState state) => Stack(
            children: [
              if (state.isLoading)
                const LoadingTransaction().animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              if (!state.isLoading && state.transactions.isNotEmpty)
                ColumnBuilder(
                  data: state.transactions,
                  itemBuilder: (index) => ItemTransaction.noDelete(
                    transaction: state.transactions[index],
                    onTap: () async {
                      final result = await Navigator.pushNamed(
                          context, AppScreens.detailTransaction,
                          arguments: state.transactions[index]);
                      if (result == null) {
                        cubit.onReloadTransaction();
                      }
                    },
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              if (!state.isLoading && state.transactions.isEmpty)
                Center(child: Text(S.current.noRecord)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBalance() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            S.current.balanceGeneral,
            style: context.theme.textTheme.titleSmall?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color(0xff606a85)),
          ),
        ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
        const SizedBox(height: 10),
        BlocBuilder<TransactionCubit, TransactionState>(
          builder: (context, TransactionState state) => Center(
            child: Text(
              '\$${state.balance.formatNumber()}',
              style: context.theme.textTheme.bodyLarge
                  ?.copyWith(fontSize: 40, color: AppColors.black),
            ),
          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
        )
      ],
    );
  }

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-50.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-70.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-50.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 60.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };
}
