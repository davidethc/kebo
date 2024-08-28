import 'package:flutter/material.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';

class ItemOnboarding extends StatelessWidget {
  final dynamic data;
  const ItemOnboarding({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 24,
          height: 24,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xff39d2c0)),
          child: Icon(data['icon'], color: Colors.white, size: 10)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 64),
      minLeadingWidth: 10,
      dense: true,
      title: Text(
        data['content'],
        style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 14),
      ),
    );
  }
}
