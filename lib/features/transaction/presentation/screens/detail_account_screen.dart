import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:kebo_app/core/utils/dialog/confirm_dialog.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_widget.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/loading/loading_area.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/views/app_listview.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/detail_account/detail_account_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/item_transaction.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/loading_transaction.dart';

class DetailAccountScreen extends StatefulWidget {
  final String id;
  final bool hasManual;
  const DetailAccountScreen({
    super.key,
    required this.id,
    required this.hasManual,
  });

  @override
  State<DetailAccountScreen> createState() => _DetailAccountScreenState();
}

class _DetailAccountScreenState extends State<DetailAccountScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late DetailAccountCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = context.read<DetailAccountCubit>();
    cubit.initial(id: widget.id);
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  void _blocListener(BuildContext context, DetailAccountState state) {
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
    return BlocListener<DetailAccountCubit, DetailAccountState>(
      listener: _blocListener,
      child: Scaffold(
        appBar: AppAppBar.withLeading(title: S.current.detailAccount),
        body: BlocBuilder<DetailAccountCubit, DetailAccountState>(
          builder: (context, DetailAccountState state) => LoadingArea(
            isLoading: state.isProcessing,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(S.current.transactions,
                      style: context.theme.textTheme.bodyLarge
                          ?.copyWith(fontSize: 16)),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
                const SizedBox(height: 14),
                state.isLoading
                    ? const LoadingTransaction().animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!)
                    : Expanded(
                        child: AppListView.onRefresh(
                          data: state.transactions,
                          onRefresh: () => cubit.initial(id: widget.id),
                          onLoadMore: () => cubit.onLoadMore(id: widget.id),
                          renderItem: (element, index) => ItemTransaction(
                            onTap: () => context.navigate(
                                AppScreens.detailTransaction,
                                arguments: state.transactions[index]),
                            transaction: state.transactions[index],
                            onDelete: () => showConfirmDialog(
                              context,
                              title: S.current.notification,
                              content: S.current.doYouWantDeleteTransaction,
                              onTap: () => cubit.onDeleteTransaction(
                                  state.transactions[index].id),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!),
                      ),
                if (!state.isLoading && state.transactions.isEmpty)
                  SizedBox(
                    height: context.h * .7,
                    width: context.w,
                    child: Center(
                      child: Text(S.current.noData),
                    ),
                  )
              ],
            ),
          ),
        ),
        floatingActionButton: widget.hasManual
            ? FloatingActionButton.extended(
                backgroundColor: AppColors.accentPrimary,
                onPressed: () async {
                  final result = await Navigator.pushNamed(
                      context, AppScreens.addTransaction,
                      arguments: widget.id);
                  if (result == 'true') {
                    cubit.initial(id: widget.id);
                  }
                },
                label: Row(
                  children: [
                    const Icon(Icons.add),
                    const SizedBox(width: 10),
                    Text(S.current.manuallyAddTransactions),
                  ],
                ),
              )
            : null,
      ),
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
