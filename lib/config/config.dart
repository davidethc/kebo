import 'package:kebo_app/config/data/dev_flavor_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'data/prod_flavor_data.dart';
import 'flavor_data.dart';

enum Flavor { dev, prod }

abstract class Config {
  static late FlavorData flavorData;
  static const _channel = MethodChannel('flavor');

  static Future<void> init() async {
    final String? flavor = await _channel.invokeMethod<String>('getFlavor');
    debugPrint('Flavor=$flavor');
    final Flavor current = Flavor.values.firstWhere((e) => e.name == flavor);
    switch (current) {
      case Flavor.dev:
        flavorData = DevFlavorData();
        break;
      case Flavor.prod:
        flavorData = ProdFlavorData();
        break;
    }
  }
}
