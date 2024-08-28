import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' as cupertino;

import '../../../l10n/generated/l10n.dart';
import '../../widgets/buttons/app_button.dart';

abstract class AppTimePickerBase<T> extends StatelessWidget {
  const AppTimePickerBase({super.key});

  ValueNotifier<T> get notifier;

  bool get showAbortButton => false;

  Widget buildChild(BuildContext context, T value);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 364,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 264,
            child: ValueListenableBuilder<T>(
                valueListenable: notifier,
                builder: (context, value, widget) =>
                    buildChild(context, value)),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity,
                child: AppButton.primary(
                    onTap: () => Navigator.pop(context, notifier.value),
                    label: S.of(context).ok),
              ),
            ),
          ),
          if (showAbortButton)
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: AppButton.secondary(
                      onTap: () => Navigator.pop(context),
                      label: S.of(context).abort),
                ),
              ),
            )
        ],
      ),
    );
  }

  Future<dynamic> show(BuildContext context) =>
      cupertino.showCupertinoModalPopup(context: context, builder: (_) => this);
}
