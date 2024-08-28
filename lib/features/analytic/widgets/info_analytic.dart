import 'package:flutter/material.dart';
import 'package:kebo_app/core/data/entities/analytic_entity/analytic_entity.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';
import 'package:kebo_app/features/analytic/widgets/loading_analytic.dart';

import 'item_analytic.dart';

class InfoAnalytic extends StatelessWidget {
  final String description;
  final bool isLoading;
  final List<AnalyticEntity> data;
  final bool isAnalytic;
  const InfoAnalytic({
    super.key,
    required this.description,
    required this.isLoading,
    required this.data,
    required this.isAnalytic,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              description,
              style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 12),
            ),
          ),
          const SizedBox(height: 14),
          isLoading
              ? const LoadingAnalytic()
              : ColumnBuilder(
                  data: data,
                  separatorItem: const Divider(height: 1),
                  itemBuilder: (index) => ItemAnalytic(
                    isDetail: isAnalytic,
                    analytic: data[index],
                  ),
                )
        ],
      ),
    );
  }
}
