import 'package:flutter/material.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';
import 'package:kebo_app/core/utils/widgets/shimmer/shimmer_widget.dart';

class LoadingEvent extends StatelessWidget {
  const LoadingEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return ColumnBuilder(
        data: const [1, 2, 3, 4],
        itemBuilder: (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3))
                ],
              ),
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(12)),
                      child: ShimmerWidget.rectangular(
                          height: 120, width: context.w)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        ShimmerWidget.rectangular(
                            height: 14, width: context.w / 3),
                        const SizedBox(height: 2),
                        ShimmerWidget.rectangular(height: 14, width: context.w),
                        const SizedBox(height: 2),
                        ShimmerWidget.rectangular(height: 14, width: context.w),
                        const SizedBox(height: 20),
                        const ShimmerWidget.rectangular(height: 52, width: 70),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}
