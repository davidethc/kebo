import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/widgets/app_input.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';
import 'package:kebo_app/features/transaction/presentation/cubit/search_category/search_category_cubit.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/category_info.dart';
import 'package:kebo_app/features/transaction/presentation/widgets/loading_transaction.dart';

class SearchCategoryScreen extends StatefulWidget {
  final String transactionId;
  const SearchCategoryScreen({super.key, required this.transactionId});

  @override
  State<SearchCategoryScreen> createState() => _SearchCategoryScreenState();
}

class _SearchCategoryScreenState extends State<SearchCategoryScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late SearchCategoryCubit cubit;
  final TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    cubit = context.read<SearchCategoryCubit>();
    cubit.initial(hasLoading: true);
  }

  void _blocListener(BuildContext context, SearchCategoryState state) {
    if (state.failure != null) {
      showFailureMessage(
        context,
        failure: state.failure!,
        onDismissed: cubit.onFlashBarDismissed,
      );
    }
    if (state.isDone) {
      cubit.initial(hasLoading: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchCategoryCubit, SearchCategoryState>(
      listener: _blocListener,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AppInput(
              hint: S.current.searchCategories,
              textAlign: TextAlign.start,
              onChanged: (value) => cubit.onChangedSearch(value),
            ),
          ),
          const SizedBox(height: 20),
          BlocBuilder<SearchCategoryCubit, SearchCategoryState>(
            builder: (context, SearchCategoryState state) => state.isLoading
                ? const LoadingTransaction()
                : Expanded(
                    child: SingleChildScrollView(
                      child: ColumnBuilder(
                        data: state.search.isNotEmpty
                            ? state.result
                            : state.categories,
                        itemBuilder: (index) => CategoryInfo(
                          categoryEntity: state.search.isNotEmpty
                              ? state.result[index]
                              : state.categories[index],
                          onAddSubcategory: () => onAddSubcategory(
                            category: state.search.isNotEmpty
                                ? state.result[index].id
                                : state.categories[index].id,
                          ),
                        ),
                      ),
                    ),
                  ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  void onAddSubcategory({
    required String category,
  }) {
    nameController.clear();
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
              ted: nameController,
              hint: S.current.addNewCategory,
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.pop();
              cubit.onAddSubcategory(
                id: widget.transactionId,
                category: category,
                subcategory: nameController.text,
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
              S.current.createCategory,
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
}
