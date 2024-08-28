import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/entities/account_entity/account_entity.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';

class ItemAccount extends StatelessWidget {
  final AccountEntity account;

  final VoidCallback onDelete;
  const ItemAccount({
    super.key,
    required this.account,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          SlidableAction(
            spacing: 0.3,
            onPressed: (context) => onDelete.call(),
            backgroundColor: AppColors.errorColor,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: S.current.delete,
          ),
        ],
      ),
      child: ListTile(
        dense: true,
        onTap: () => account.hasDetail
            ? context.navigate(AppScreens.detailAccount,
                arguments: {'id': account.id, 'hasManual': account.hasManual})
            : null,
        title: Text(
          account.name,
          style: context.theme.textTheme.bodyLarge
              ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          account.getNumber,
          style: context.theme.textTheme.bodyLarge
              ?.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        trailing: Text(
          '\$${account.balance?.current.formatNumber()}',
          style: context.theme.textTheme.bodyLarge
              ?.copyWith(fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
