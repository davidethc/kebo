import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/entities/analytic_entity/analytic_entity.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';

class ItemAnalytic extends StatelessWidget {
  final bool isDetail;
  final AnalyticEntity analytic;
  const ItemAnalytic({
    super.key,
    required this.isDetail,
    required this.analytic,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            height: 135,
            width: 4,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3)),
                ],
                borderRadius: BorderRadius.circular(4),
                color: AppColors.accentPrimary),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  analytic.category,
                  style:
                      context.theme.textTheme.bodyLarge?.copyWith(fontSize: 12),
                ),
                const SizedBox(height: 4),
                Text(
                  analytic.message,
                  style:
                      context.theme.textTheme.bodyLarge?.copyWith(fontSize: 14),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Due ${DateTime.parse(analytic.date).isToday() ? 'Today' : (DateFormat('dd/MM').format(DateTime.parse(analytic.date)))}, ${DateFormat('HH:mm a', 'en').format(DateTime.parse(analytic.date))}',
                      style: context.theme.textTheme.bodyLarge
                          ?.copyWith(fontSize: 12),
                    ),
                    const Spacer(),
                    Container(
                      height: 28,
                      width: 28,
                      decoration: const BoxDecoration(
                          color: AppColors.accentPrimary,
                          shape: BoxShape.circle),
                      child: Center(
                          child: Text(
                        '${analytic.cant}',
                        style: context.theme.textTheme.bodyLarge
                            ?.copyWith(fontSize: 14, color: Colors.white),
                      )),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () => context.navigate(AppScreens.allTransaction),
                      child: Text(
                        !isDetail ? S.current.seeMore : S.current.viewDetails,
                        style: context.theme.textTheme.bodyLarge?.copyWith(
                            fontSize: 14, color: AppColors.accentPrimary),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
