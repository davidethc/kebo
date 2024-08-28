import 'package:kebo_app/core/constants/theme/theme.dart';
import 'package:kebo_app/core/data/enums/locale.dart';
import 'package:kebo_app/core/navigation/app_screens.dart';
import 'package:kebo_app/core/navigation/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kebo_app/core/constants/theme/app_main_theme.dart';
import 'package:provider/provider.dart';

import 'core/data/providers/locale_provider.dart';
import 'core/l10n/generated/l10n.dart';

class KeboApp extends StatelessWidget {
  const KeboApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocaleModel(),
      child: Consumer<LocaleModel>(
        builder: (context, localeModel, child) => MaterialApp(
          theme: AppMainTheme.mainTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: AppScreens.splash,
          onGenerateRoute: RouteGenerator.generate,
          supportedLocales: S.delegate.supportedLocales,
          locale: localeModel.locale.asLocale(),
          navigatorKey: rootNavigatorKey,
          builder: (context, child) {
            final mediaQueryData = MediaQuery.of(context);
            final scale = mediaQueryData.textScaler
                .clamp(minScaleFactor: 1.0, maxScaleFactor: 1.1);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: scale),
              child: child ?? const SizedBox.shrink(),
            );
          },
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
        ),
      ),
    );
  }
}
