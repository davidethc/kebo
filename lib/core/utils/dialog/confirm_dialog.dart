import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../l10n/generated/l10n.dart';

void showConfirmDialog(
  BuildContext context, {
  required String title,
  required String content,
  required VoidCallback onTap,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: CupertinoAlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            CupertinoDialogAction(
              child: Text(S.current.no),
              onPressed: () => Navigator.of(context).pop(),
            ),
            CupertinoDialogAction(
              child: Text(S.current.yes),
              onPressed: () {
                Navigator.of(context).pop();
                onTap.call();
              },
            ),
          ],
        ),
      );
    },
  );
}
