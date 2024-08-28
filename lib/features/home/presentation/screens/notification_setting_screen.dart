import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';

class NotificationSettingScreen extends StatefulWidget {
  const NotificationSettingScreen({super.key});

  @override
  State<NotificationSettingScreen> createState() =>
      _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {
  bool isNotification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar.withLeading(title: S.current.notificationSetting),
      body: Column(
        children: [
          const SizedBox(height: 10),
          ListTile(
            onTap: () {
              isNotification = !isNotification;
              setState(() {});
            },
            title: Text(S.current.notification),
            dense: true,
            trailing: CupertinoSwitch(
              value: isNotification,
              onChanged: (value) => setState(
                () {
                  isNotification = value;
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
