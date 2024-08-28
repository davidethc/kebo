import 'package:flutter/material.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/utils/app_app_bar.dart';
import 'package:provider/provider.dart';
import 'package:kebo_app/core/data/enums/locale.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_context.dart';

import '../../../../core/data/providers/locale_provider.dart';
import '../../../../core/l10n/generated/l10n.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar.withLeading(title: S.current.language),
      body: Consumer<LocaleModel>(
        builder: (context, localeModel, child) => ListView.builder(
          itemBuilder: (context, index) => ListTile(
            onTap: () {
              localeModel.set(localeModel.listLocale[index]);
              Navigator.pushNamedAndRemoveUntil(
                  context, AppScreens.splash, (route) => false);
            },
            title: Text(localeModel.listLocale[index].asName(context),
                style: context.theme.textTheme.bodyLarge),
            trailing: localeModel.currentIndex == index
                ? const Icon(Icons.check)
                : const SizedBox.shrink(),
          ),
          itemCount: localeModel.listLocale.length,
        ),
      ),
    );
  }
}
