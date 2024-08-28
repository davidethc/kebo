import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kebo_app/core/constants/app_asset_images.dart';
import 'package:kebo_app/core/data/entities/product_entity/product_entity.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';

class ItemProduct extends StatelessWidget {
  final ProductEntity product;
  final VoidCallback onTap;
  final bool selected;
  const ItemProduct({
    super.key,
    required this.product,
    required this.onTap,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.w,
      height: 78,
      decoration: BoxDecoration(
          color: const Color(0xfff1f4f8),
          borderRadius: BorderRadius.circular(12)),
      alignment: Alignment.centerLeft,
      child: CheckboxListTile(
        contentPadding: EdgeInsets.zero,
        dense: true,
        title: Text(
          product.name,
          style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
        ),
        value: selected,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (bool? value) => onTap.call(),
      ),
    );
  }
}
