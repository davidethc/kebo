import 'package:kebo_app/core/constants/theme/theme.dart';
import 'package:flutter/material.dart';

abstract class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({Key? key}) : super(key: key);

  bool get expandBehind => false;

  bool get isDismissible => true;

  bool get enableDrag => true;

  double? get heightFactor => .6;

  Color get thumbColor => AppColors.accentPrimary;

  Color get backgroundColor => AppColors.accentSecondary;

  Future<dynamic> show(BuildContext context) => showModalBottomSheet(
        context: context,
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        isScrollControlled: true,
        isDismissible: isDismissible,
        enableDrag: enableDrag,
        builder: (_) => buildWithDrawerIndicator(context, child: this),
      );

  Widget buildWithDrawerIndicator(
    BuildContext context, {
    required Widget child,
  }) {
    return expandBehind ? _expanded(context, child) : _normal(context, child);
  }

  Widget _normal(BuildContext context, Widget child) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [_buildTop(), child],
      );

  Widget _expanded(BuildContext context, Widget child) => SizedBox(
        height: MediaQuery.of(context).size.height * heightFactor!,
        child: Stack(
          children: [
            Positioned(
              top: expandBehind ? 0 : 28,
              left: 0,
              right: 0,
              bottom: 0,
              child: expandBehind
                  ? ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                      child: child,
                    )
                  : child,
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: _buildTop(),
            )
          ],
        ),
      );

  Widget _buildTop() => Container(
        width: double.infinity,
        height: 28,
        alignment: Alignment.center,
        child: Container(
          width: 45,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(60)),
            color: thumbColor,
          ),
        ),
      );
}
