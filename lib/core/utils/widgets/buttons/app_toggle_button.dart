import 'package:flutter/material.dart';

import '../../../constants/theme/app_colors.dart';

class AppToggleButton extends ImplicitlyAnimatedWidget {
  final bool isSelected;
  final VoidCallback? onChange;
  final Color color;
  final Color colorSelected;
  final String label;
  final TextStyle? textStyle;
  final Widget? icon;

  const AppToggleButton({
    required this.label,
    this.icon,
    this.textStyle,
    this.isSelected = false,
    this.onChange,
    this.color = AppColors.accentSecondary,
    this.colorSelected = AppColors.bgSecondary,
    Duration duration = const Duration(milliseconds: 550),
    Key? key,
  }) : super(key: key, duration: duration);

  @override
  ImplicitlyAnimatedWidgetState<AppToggleButton> createState() =>
      _AppToggleButtonState();
}

class _AppToggleButtonState extends AnimatedWidgetBaseState<AppToggleButton> {
  ColorTween? _contentColorTween;
  ColorTween? _containerColorTween;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _contentColorTween = visitor(
        _contentColorTween,
        widget.isSelected ? widget.color : widget.colorSelected,
        (dynamic value) => ColorTween(begin: value)) as ColorTween?;

    _containerColorTween = visitor(
        _containerColorTween,
        widget.isSelected ? widget.colorSelected : widget.color,
        (dynamic value) => ColorTween(begin: value)) as ColorTween?;
  }

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = this.animation;
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: _containerColorTween?.evaluate(animation),
          border: Border.all(color: widget.colorSelected, width: 1)),
      child: InkWell(
        onTap: widget.onChange,
        child: Row(children: [
          if (widget.icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: widget.icon!,
            ),
          Expanded(
              child: Text(
            widget.label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: widget.textStyle?.copyWith(
                    color: _contentColorTween?.evaluate(animation)) ??
                TextStyle(
                  color: _contentColorTween?.evaluate(animation),
                ),
          )),
        ]),
      ),
    );
  }
}
