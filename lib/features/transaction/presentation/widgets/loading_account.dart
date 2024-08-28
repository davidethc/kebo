import 'package:flutter/material.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';
import 'package:kebo_app/core/utils/widgets/shimmer/shimmer_widget.dart';

class LoadingAccount extends StatelessWidget {
  const LoadingAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return ColumnBuilder(
      data: List.generate(2, (index) => index),
      itemBuilder: (index) => ListTile(
        dense: true,
        minLeadingWidth: 10,
        title: ShimmerWidget.rectangular(height: 20, width: context.w / 2),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ShimmerWidget.rectangular(height: 20, width: context.w / 2),
        ),
        trailing: ShimmerWidget.rectangular(height: 20, width: context.w / 4),
      ),
    );
  }
}
