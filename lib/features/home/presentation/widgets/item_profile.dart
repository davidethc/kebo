import 'package:flutter/material.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';

class ItemProfile extends StatelessWidget {
  final dynamic data;
  const ItemProfile({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        onTap: () => data['onTap'].call(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        title: Text(
          data['content'],
          style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 16),
        ),
        minLeadingWidth: 10,
        leading: Icon(data['icon']),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
