import 'package:flutter/material.dart';

class BottomSpace extends StatelessWidget {
  const BottomSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return SizedBox(height: bottom);
  }
}
