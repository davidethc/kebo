import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/entities/entities.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';
import 'package:kebo_app/core/utils/widgets/cached_image/cached_image.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';

class CategoryInfo extends StatelessWidget {
  final CategoryEntity categoryEntity;
  final VoidCallback onAddSubcategory;
  const CategoryInfo(
      {super.key,
      required this.categoryEntity,
      required this.onAddSubcategory});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    color: const Color(0xff4c39d2c0),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xff39d2c0))),
                child: Center(
                  child: CachedImage(
                      imageUrl: categoryEntity.icon, height: 24, width: 24),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                categoryEntity.id,
                style: context.theme.textTheme.titleSmall
                    ?.copyWith(fontSize: 16, color: AppColors.black),
              ),
            ],
          ),
          ColumnBuilder(
            data: categoryEntity.categoria,
            itemBuilder: (index) => ListTile(
              minLeadingWidth: 0,
              dense: true,
              onTap: () => Navigator.pop(context,
                  '${categoryEntity.id}||${categoryEntity.categoria[index].subcategoria}'),
              contentPadding: EdgeInsets.zero,
              leading: const SizedBox(height: 44, width: 44),
              title: Text(
                categoryEntity.categoria[index].subcategoria,
                style:
                    context.theme.textTheme.bodyLarge?.copyWith(fontSize: 14),
              ),
            ),
          ),
          ListTile(
            dense: true,
            onTap: onAddSubcategory,
            leading: const SizedBox(height: 44, width: 44),
            contentPadding: EdgeInsets.zero,
            minLeadingWidth: 0,
            title: Row(
              children: [
                const Icon(Icons.add, color: AppColors.accentPrimary),
                const SizedBox(width: 4),
                Text(
                  'Add Subcategory',
                  style: context.theme.textTheme.bodyLarge?.copyWith(
                      color: AppColors.accentPrimary,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
