import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';

class AppCheckButton extends StatelessWidget {
  final bool checked;
  final Function(bool?) onChange;
  final String? label;
  final EdgeInsets? padding;
  final int maxLines;
  final TextStyle? style;

  const AppCheckButton({
    required this.checked,
    required this.onChange,
    this.label,
    this.padding,
    this.maxLines = 1,
    this.style,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: padding ?? const EdgeInsets.symmetric(vertical: 3.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              value: checked,
              onChanged: onChange,
              side: const BorderSide(color: AppColors.bgSecondary, width: 1),
              checkColor: AppColors.accentSecondary,
              activeColor: AppColors.bgSecondary,
              focusColor: AppColors.bgSecondary,
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            if (label != null)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    label!,
                    maxLines: maxLines,
                    overflow: TextOverflow.ellipsis,
                    style: style ?? context.theme.textTheme.bodyLarge,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
