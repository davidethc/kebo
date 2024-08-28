import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/entities/transaction_entity/transaction_entity/transaction_entity.dart';
import 'package:kebo_app/core/di/injection.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/loading/loading_area.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/widgets/app_input.dart';
import 'package:kebo_app/core/utils/widgets/cached_image/cached_image.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/detail_transaction/detail_transaction_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/search_category/search_category_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/screens/search_category_screen.dart';

class DetailTransactionScreen extends StatefulWidget {
  final TransactionEntity transaction;
  const DetailTransactionScreen({super.key, required this.transaction});

  @override
  State<DetailTransactionScreen> createState() =>
      _DetailTransactionScreenState();
}

class _DetailTransactionScreenState extends State<DetailTransactionScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late DetailTransactionCubit cubit;
  final TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    cubit = context.read<DetailTransactionCubit>();
    cubit.initial(transactionEntity: widget.transaction);
  }

  void _blocListener(BuildContext context, DetailTransactionState state) {
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
    return BlocListener<DetailTransactionCubit, DetailTransactionState>(
      listener: _blocListener,
      child: Scaffold(
        appBar: const AppAppBar.withLeading(title: ''),
        body: BlocBuilder<DetailTransactionCubit, DetailTransactionState>(
            builder: (context, DetailTransactionState state) {
          final createdAt = DateTime.tryParse(
                  state.transaction?.valueDate ?? DateTime.now().toString()) ??
              DateTime.now();
          return LoadingArea(
            isLoading: state.isLoading,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  width: context.w,
                  child: Column(
                    children: [
                      const Divider(),
                      const SizedBox(height: 14),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          width: 90,
                          height: 90,
                          padding: const EdgeInsets.all(2),
                          color: const Color(0xff39d2c0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: CachedImage(
                              imageUrl: widget.transaction.merchant?.logo ?? "",
                              width: 90,
                              height: 90,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
                      Text(
                        '${widget.transaction.isIncome ? '+' : '-'}\$${widget.transaction.amount.formatNumber()}',
                        style: context.theme.textTheme.bodyLarge?.copyWith(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: widget.transaction.isIncome
                                ? Colors.green
                                : Colors.red),
                      ),
                      Text(
                        state.transaction?.merchant?.name ?? '',
                        style: context.theme.textTheme.bodyLarge
                            ?.copyWith(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        DateFormat('EEEE, d MMM yyyy').format(createdAt),
                        style: context.theme.textTheme.bodyLarge
                            ?.copyWith(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.transaction.merchant?.website ?? "",
                        style: context.theme.textTheme.bodyLarge
                            ?.copyWith(fontSize: 14),
                      ),
                      const SizedBox(height: 14),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    S.current.account,
                    style: context.theme.textTheme.bodyLarge?.copyWith(
                        fontSize: 16, color: AppColors.secondaryText),
                  ),
                ),
                const SizedBox(height: 14),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    onTap: () => onShowDescription(),
                    dense: true,
                    leading: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          color: const Color(0xff4c39d2c0),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xff39d2c0))),
                      child: const Icon(Icons.description_outlined,
                          size: 24, color: Colors.black),
                    ),
                    title: Text(
                      'Description',
                      style: context.theme.textTheme.titleSmall
                          ?.copyWith(fontSize: 16, color: AppColors.black),
                    ),
                    subtitle: Text(state.transaction?.description ?? ''),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    onTap: () => onShowCategory(),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    dense: true,
                    leading: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          color: const Color(0xff4c39d2c0),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xff39d2c0))),
                      child: const Icon(Icons.class_outlined,
                          size: 24, color: Colors.black),
                    ),
                    title: Text(
                      '${S.current.category} | ${S.current.subcategory}',
                      style: context.theme.textTheme.titleSmall
                          ?.copyWith(fontSize: 16, color: AppColors.black),
                    ),
                    subtitle: Text(
                        '${state.transaction?.category ?? ''} | ${state.transaction?.subcategory ?? ''}'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    dense: true,
                    leading: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          color: const Color(0xff4c39d2c0),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xff39d2c0))),
                      child: const Icon(Icons.date_range,
                          size: 24, color: Colors.black),
                    ),
                    title: Text(
                      S.current.date,
                      style: context.theme.textTheme.titleSmall
                          ?.copyWith(fontSize: 16, color: AppColors.black),
                    ),
                    subtitle:
                        Text(DateFormat('EEEE, d MMM yyyy').format(createdAt)),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }

  void onShowDescription() {
    descriptionController.clear();
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      backgroundColor: Colors.white,
      isScrollControlled: true,
      builder: (BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AppInput(
              autofocus: true,
              ted: descriptionController,
              hint: S.current.description,
              textAlign: TextAlign.start,
              maxLines: 10,
              type: TextInputType.multiline,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.pop();
              cubit.onUpdateDescription(
                id: widget.transaction.id,
                description: descriptionController.text,
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(context.w * .4, 40),
              elevation: 0,
              backgroundColor: AppColors.accentPrimary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Text(
              S.current.save,
              style: context.theme.textTheme.titleMedium?.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).viewInsets.bottom,
          )
        ],
      ),
    );
  }

  Widget _getTabWithCubit<Cubit extends BlocBase<Object?>>(Widget child) =>
      BlocProvider(create: (_) => getIt<Cubit>(), child: child);

  void onShowCategory() async {
    final result = await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      backgroundColor: Colors.white,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (BuildContext context) => _getTabWithCubit<SearchCategoryCubit>(
        SearchCategoryScreen(
          transactionId: widget.transaction.id,
        ),
      ),
    );
    if (result != null) {
      cubit.onChangedCategory(id: widget.transaction.id, value: result);
    }
  }
}
