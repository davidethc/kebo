import 'package:flutter/material.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';

class AppRadioButton extends StatelessWidget {
  final bool checked;
  final Function(bool) onChange;
  final String? label;
  final EdgeInsets? padding;

  const AppRadioButton({
    required this.checked,
    required this.onChange,
    this.label,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () => onChange(!checked),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: padding ?? const EdgeInsets.symmetric(vertical: 3.0),
          child: Row(
            children: [
              IconButton(
                constraints: BoxConstraints.tight(const Size(24, 24)),
                padding: EdgeInsets.zero,
                onPressed: () => onChange(!checked),
                iconSize: 24,
                icon: Container(
                  height: 24,
                  width: 24,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.bgSecondary, width: 2),
                  ),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: checked ? 12 : 0,
                    height: checked ? 12 : 0,
                    decoration: const BoxDecoration(
                        color: AppColors.bgSecondary, shape: BoxShape.circle),
                  ),
                ),
              ),
              if (label != null)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      label!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.theme.textTheme.bodyLarge,
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
