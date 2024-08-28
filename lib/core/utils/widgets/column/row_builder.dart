import 'package:flutter/material.dart';

class RowBuilder extends StatelessWidget {
  final List data;
  final Function itemBuilder;
  final Widget separatorItem;
  const RowBuilder({
    Key? key,
    required this.data,
    required this.itemBuilder,
    this.separatorItem = const SizedBox(width: 10),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        data.length,
        (index) {
          final isEnd = index != data.length - 1;
          return Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [itemBuilder(index), if (isEnd) separatorItem],
            ),
          );
        },
      ),
    );
  }
}
