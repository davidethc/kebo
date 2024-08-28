import 'package:flutter/foundation.dart';

Future<void> debugDelayed([int seconds = 3]) => Future.delayed(
      kDebugMode ? const Duration(seconds: 3) : Duration.zero,
    );
