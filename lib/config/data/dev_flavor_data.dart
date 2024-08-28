import 'package:kebo_app/config/config.dart';
import 'package:kebo_app/config/flavor_data.dart';

class DevFlavorData implements FlavorData {
  @override
  Flavor get flavor => Flavor.dev;

  @override
  String get appName => 'Dev';

  @override
  String get baseUrl =>
      'https://sy7cutdio1.execute-api.us-east-1.amazonaws.com';

  @override
  String get sentryKey =>
      'https://ce75b91a7cd02506f639d52eaf8bd4b3@o4506499613589504.ingest.sentry.io/4506499614179328';

  @override
  String get chatBaseUrl => 'https://kebo-ai-production.up.railway.app';
}
