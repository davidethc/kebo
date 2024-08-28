import 'config.dart';

abstract class FlavorData {
  Flavor get flavor;
  String get appName;
  String get baseUrl;
  String get chatBaseUrl;
  String get sentryKey;
}
