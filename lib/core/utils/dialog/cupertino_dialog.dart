import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../l10n/generated/l10n.dart';

void showCupertino(
  BuildContext context, {
  required String title,
  required String subtitle,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(
          subtitle,
          textAlign: TextAlign.center,
        ),
        actions: [
          CupertinoDialogAction(
            child: Text(S.current.ok),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      );
    },
  );
}
