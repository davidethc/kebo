import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/entities/dashboard_line_entity/dashboard_line_entity.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ItemHome extends StatelessWidget {
  final String title;
  final String description;
  final DashboardLineEntity? data;
  final String amount;
  final Color color;
  final bool isChart;
  final bool isIcon;
  final double value;

  const ItemHome({
    super.key,
    required this.title,
    required this.description,
    required this.amount,
    required this.color,
    required this.value,
    this.data,
  })  : isChart = false,
        isIcon = false;

  const ItemHome.isChart({
    super.key,
    required this.title,
    required this.description,
    required this.amount,
    required this.color,
    required this.data,
  })  : isChart = true,
        value = 0,
        isIcon = false;
  const ItemHome.icon({
    super.key,
    required this.title,
    required this.description,
    required this.amount,
    required this.color,
    required this.value,
    this.data,
  })  : isChart = false,
        isIcon = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            width: context.w,
            height: 220,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isChart ? title.toUpperCase() : '',
                  style: context.theme.textTheme.bodyLarge?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white),
                ),
                const SizedBox(height: 22),
                if (isChart)
                  if (data != null)
                    SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          Text(
                            '${data?.percent ?? 0}%',
                            style: context.theme.textTheme.bodyLarge?.copyWith(
                                fontSize: 30, color: AppColors.white),
                          ),
                          const SizedBox(width: 10),
                          data?.isUp ?? false
                              ? const Icon(Icons.trending_up,
                                  color: Colors.white, size: 30)
                              : const Icon(Icons.trending_down,
                                  color: Colors.white, size: 30)
                        ],
                      ),
                    )
                  else
                    const SizedBox(height: 100),
                if (isIcon)
                  Center(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: [
                          CircularPercentIndicator(
                            percent: 0.4,
                            radius: 48,
                            lineWidth: 12,
                            animation: true,
                            animateFromLastPercent: true,
                            progressColor: const Color(0xFF7165E3),
                            backgroundColor: const Color(0x32000000),
                          ),
                          const Center(
                            child: Icon(
                              Icons.savings,
                              size: 36,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                if (!isIcon && !isChart)
                  Center(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: [
                          CircularPercentIndicator(
                            percent: value,
                            radius: 48,
                            lineWidth: 18,
                            animation: true,
                            animateFromLastPercent: true,
                            progressColor: const Color(0xff7ee4f0),
                            backgroundColor: const Color(0x32000000),
                          ),
                          Center(
                            child: Text(
                              '${value * 100}%',
                              style: context.theme.textTheme.bodyLarge
                                  ?.copyWith(
                                      fontSize: 14,
                                      color: getColor,
                                      fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                const SizedBox(height: 10),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    amount,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.theme.textTheme.bodyLarge?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: getColor,
                    ),
                  ),
                ),
                Text(
                  description,
                  style: context.theme.textTheme.bodyLarge
                      ?.copyWith(fontSize: 11, color: AppColors.white),
                ),
              ],
            ),
          ),
          if (!isChart) ...[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  width: context.w,
                  height: 220,
                ),
              ),
            ),
            Container(
              width: context.w,
              height: 220,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              child: Text(
                title.toUpperCase(),
                style: context.theme.textTheme.bodyLarge?.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white),
              ),
            ),
          ],
          if (!isChart)
            Positioned(
              top: 15,
              right: -15,
              child: Transform(
                alignment: FractionalOffset.center,
                transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 180),
                child: Container(
                  color: Colors.red,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: Text(
                    S.current.commingSoon,
                    style: context.theme.textTheme.bodyLarge
                        ?.copyWith(fontSize: 6, color: Colors.white),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }

  Color get getColor {
    return AppColors.white;
  }
}
