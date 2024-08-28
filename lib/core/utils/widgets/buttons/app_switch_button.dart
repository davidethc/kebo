import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppSwitchButton extends StatefulWidget {
  final bool checked;
  final Function(bool) onChange;

  const AppSwitchButton({
    required this.checked,
    required this.onChange,
    Key? key,
  }) : super(key: key);

  @override
  State<AppSwitchButton> createState() => _AppSwitchButtonState();
}

class _AppSwitchButtonState extends State<AppSwitchButton>
    with SingleTickerProviderStateMixin {
  Animation? _circleAnimation;
  AnimationController? _animationController;
  bool get checked => widget.checked;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: checked ? Alignment.centerRight : Alignment.centerLeft,
            end: checked ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController!, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController!.isCompleted) {
              _animationController!.reverse();
            } else {
              _animationController!.forward();
            }
            widget.onChange(!checked);
          },
          child: Container(
            width: 40.0,
            height: 20.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: _circleAnimation!.value != Alignment.centerLeft
                  ? AppColors.onlyGreen
                  : AppColors.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                alignment: !checked
                    ? ((Directionality.of(context) == TextDirection.rtl)
                        ? Alignment.centerRight
                        : Alignment.centerLeft)
                    : ((Directionality.of(context) == TextDirection.rtl)
                        ? Alignment.centerLeft
                        : Alignment.centerRight),
                child: Container(
                  width: 18.0,
                  height: 18.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
