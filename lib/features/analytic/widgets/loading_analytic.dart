import 'package:flutter/material.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';
import 'package:kebo_app/core/utils/widgets/shimmer/shimmer_widget.dart';

class LoadingAnalytic extends StatelessWidget {
  const LoadingAnalytic({super.key});

  @override
  Widget build(BuildContext context) {
    return ColumnBuilder(
        data: List.generate(10, (index) => index),
        itemBuilder: (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const ShimmerWidget.rectangular(height: 100, width: 4),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShimmerWidget.rectangular(
                            height: 14, width: context.w / 3),
                        const SizedBox(height: 4),
                        ShimmerWidget.rectangular(height: 14, width: context.w),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            ShimmerWidget.rectangular(
                                height: 14, width: context.w / 3),
                            const Spacer(),
                            const ShimmerWidget.rectangular(
                                height: 24, width: 24),
                            const SizedBox(width: 4),
                            ShimmerWidget.rectangular(
                                height: 14, width: context.w / 3)
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  )
                ],
              ),
            ));
  }
}
