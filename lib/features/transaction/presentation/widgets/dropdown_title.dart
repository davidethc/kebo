import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/constants/theme/app_fonts.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/widgets/dropdown/dropdown.dart';

class DropdownTitle extends StatelessWidget {
  final int currentIndex;
  final bool isError;
  final List<DropdownItem<Object>> items;
  final Function(Object?, int) onChange;
  final Widget child;
  const DropdownTitle({
    super.key,
    required this.currentIndex,
    required this.isError,
    required this.items,
    required this.onChange,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomDropdown(
          dropdownButtonStyle: DropdownButtonStyle(
              backgroundColor: Colors.transparent,
              padding: EdgeInsets.zero,
              width: context.w,
              borderColor: Colors.transparent),
          dropdownStyle: const DropdownStyle(
              padding: EdgeInsets.zero, color: Colors.white),
          onChange: onChange,
          items: items,
          currentIndex: currentIndex,
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.alternate)),
            child: Row(
              children: [
                child,
                const Spacer(),
                const Icon(Icons.arrow_drop_down, color: Colors.black),
              ],
            ),
          ),
        ),
        if (isError) ...[
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(S.current.inputErrorRequiredEmpty,
                style: const TextStyle(
                    color: AppColors.errorColor,
                    fontFamily: AppFonts.outfit,
                    fontWeight: FontWeight.w400,
                    fontSize: 10)),
          ),
        ],
      ],
    );
  }
}
