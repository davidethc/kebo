import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/data/enums/gender_enum.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';

class ItemGender extends StatelessWidget {
  final Gender gender;
  final bool selected;
  final VoidCallback onTap;
  const ItemGender({
    super.key,
    required this.gender,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ChoiceChip(
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              gender.icon(),
              color: Colors.black,
              size: selected ? 30 : 20,
            ),
            const SizedBox(width: 10),
            Text(
              gender.asString(),
              style: context.theme.textTheme.bodyLarge
                  ?.copyWith(fontSize: 16, color: AppColors.black),
            ),
          ],
        ),
        selectedColor: selected ? const Color(0xff39d2c0) : AppColors.alternate,
        elevation: 0,
        selected: true,
      ),
    );
  }
}
