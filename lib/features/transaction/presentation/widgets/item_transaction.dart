import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/entities/transaction_entity/transaction_entity.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/widgets/cached_image/cached_image.dart';

class ItemTransaction extends StatelessWidget {
  final TransactionEntity transaction;
  final VoidCallback? onDelete;
  final bool isDelete;
  final VoidCallback onTap;
  const ItemTransaction({
    super.key,
    required this.transaction,
    required this.onDelete,
    required this.onTap,
  }) : isDelete = true;
  const ItemTransaction.noDelete({
    super.key,
    required this.transaction,
    required this.onTap,
  })  : isDelete = false,
        onDelete = null;

  @override
  Widget build(BuildContext context) {
    final createdAt =
        DateTime.tryParse(transaction.valueDate) ?? DateTime.now();
    if (isDelete) {
      return Slidable(
        key: const ValueKey(0),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          dismissible: DismissiblePane(onDismissed: () {}),
          children: [
            if (isDelete)
              SlidableAction(
                spacing: 0.3,
                onPressed: (context) => onDelete!.call(),
                backgroundColor: AppColors.errorColor,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: S.current.delete,
              ),
          ],
        ),
        child: ListTile(
          onTap: onTap,
          leading: Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
                color: const Color(0xff4c39d2c0),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xff39d2c0))),
            child: CachedImage(
              imageUrl: transaction.merchant?.logo ?? "",
              width: 24,
              height: 24,
            ),
          ),
          dense: true,
          minLeadingWidth: 10,
          title: Text(
            transaction.category,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            createdAt.isToday()
                ? S.current.today
                : (DateFormat('dd/MM').format(createdAt)),
            style: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 13, fontWeight: FontWeight.w500),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${transaction.isIncome ? '+' : '-'}\$${transaction.amount.formatNumber()}',
                style: context.theme.textTheme.bodyLarge?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: transaction.isIncome ? Colors.green : Colors.red),
              ),
              Text(
                transaction.institutionName,
                style: context.theme.textTheme.bodyLarge
                    ?.copyWith(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      );
    }
    return ListTile(
      onTap: onTap,
      leading: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
            color: const Color(0xff4c39d2c0),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xff39d2c0))),
        child: CachedImage(
          imageUrl: transaction.merchant?.logo ?? "",
          width: 24,
          height: 24,
        ),
      ),
      dense: true,
      minLeadingWidth: 10,
      title: Text(
        transaction.category,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: context.theme.textTheme.bodyLarge
            ?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        createdAt.isToday()
            ? S.current.today
            : (DateFormat('dd/MM').format(createdAt)),
        style: context.theme.textTheme.bodyLarge
            ?.copyWith(fontSize: 13, fontWeight: FontWeight.w500),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${transaction.isIncome ? '+' : '-'}\$${transaction.amount.formatNumber()}',
            style: context.theme.textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: transaction.isIncome ? Colors.green : Colors.red),
          ),
          Text(
            transaction.institutionName,
            style: context.theme.textTheme.bodyLarge
                ?.copyWith(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
