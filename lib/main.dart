import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:kebo_app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:kebo_app/firebase_options.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'config/config.dart';
import 'core/data/local/local_data.dart';
import 'core/di/injection.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  runZonedGuarded(
    () async {
      final WidgetsBinding widgetsBinding =
          WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
        name: 'Kebo',
      );
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      WidgetsFlutterBinding.ensureInitialized();
      await Config.init();
      await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
      if (Platform.isAndroid) {
        await FlutterDisplayMode.setHighRefreshRate();
      }
      await LocalDataHelper.instance.init();
      configureDependencies();
      await SentryFlutter.init(
        (options) => options
          ..dsn = Config.flavorData.sentryKey
          ..tracesSampleRate = 1.0
          ..debug = false,
        appRunner: () => runApp(DevicePreview(
            enabled: false, builder: (context) => const KeboApp())),
      );
    },
    (exception, stackTrace) async {
      await Sentry.captureException(exception, stackTrace: stackTrace);
    },
  );
}
