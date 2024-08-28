import 'package:flutter/material.dart';
import 'package:kebo_app/core/utils/widgets/buttons/app_button.dart';

class AppStateAwareButton extends StatelessWidget {
  final AppButton child;
  final bool? loading;
  const AppStateAwareButton({
    required this.child,
    this.loading,
    Key? key,
  }) : super(key: key);

  factory AppStateAwareButton.primary({
    required VoidCallback onTap,
    required String label,
    bool? enabled,
    bool? loading,
    bool forceUppercase = true,
  }) =>
      AppStateAwareButton(
          loading: loading,
          child: AppButton.primary(
            onTap: onTap,
            enabled: enabled,
            label: label,
          ));

  factory AppStateAwareButton.secondary({
    required VoidCallback onTap,
    required String label,
    bool? enabled,
    bool? loading,
    bool forceUppercase = true,
  }) =>
      AppStateAwareButton(
          loading: loading,
          child: AppButton.secondary(
            onTap: onTap,
            enabled: enabled,
            label: label,
          ));

  factory AppStateAwareButton.icon({
    required VoidCallback onTap,
    required Widget label,
    IconData? icon,
    bool? loading,
    double iconSize = 24,
    ButtonStyle? style,
    bool? enabled,
    Color? iconColor,
    AppIconButtonPosition? iconPosition,
  }) =>
      AppStateAwareButton(
          loading: loading,
          child: AppButton.icon(
            onTap: onTap,
            label: label,
            icon: icon,
            iconSize: iconSize,
            enabled: enabled,
            iconColor: iconColor,
            style: style,
            iconPosition: iconPosition,
          ));

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        transitionBuilder: _transition,
        layoutBuilder: _layoutBuilder,
        child: (loading ?? false) ? _loader : child);
  }

  Widget _layoutBuilder(Widget? currentChild, List<Widget> previousChildren) {
    List<Widget> children = [
      currentChild ?? const SizedBox(),
      ...previousChildren
    ];

    if (loading == false) children = children.reversed.toList();
    final x = child.style?.fixedSize?.resolve({MaterialState.focused})?.height;
    return SizedBox(
      height: x,
      child: Stack(
        alignment: Alignment.center,
        children: children,
      ),
    );
  }

  Widget _transition(Widget child, Animation<double> animation) {
    return _AwareAnimatedWidget(sizeFactor: animation, child: child);
  }

  Widget get _loader {
    final x = child.style?.fixedSize?.resolve({MaterialState.focused})?.height;
    return Align(
        alignment: Alignment.center,
        child: Container(
          height: x,
          width: x,
          padding: const EdgeInsets.all(8),
          decoration: (child is OutlinedButton
                  ? _outlineButtonDeco()
                  : _textButtonDeco())
              .copyWith(shape: BoxShape.circle),
          child: const CircularProgressIndicator(
              strokeWidth: 2, color: Colors.white),
        ));
  }

  BoxDecoration _textButtonDeco() {
    return BoxDecoration(
      color: child.style?.backgroundColor?.resolve({MaterialState.focused}),
    );
  }

  BoxDecoration _outlineButtonDeco() {
    return BoxDecoration(
      color: child.style?.backgroundColor?.resolve({MaterialState.focused}),
    );
  }
}

class _AwareAnimatedWidget extends AnimatedWidget {
  const _AwareAnimatedWidget({
    Key? key,
    required Animation<double> sizeFactor,
    this.child,
  }) : super(key: key, listenable: sizeFactor);

  Animation<double> get sizeFactor => listenable as Animation<double>;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, layout) {
      return SizedBox(width: layout.maxWidth * sizeFactor.value, child: child);
    });
  }
}
