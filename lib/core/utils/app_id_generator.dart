import 'dart:math';

abstract class AppIdGenerator {
  static const _keys =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz';

  static String k([int length = 10]) => List.generate(
        length,
        (index) => _keys[Random().nextInt(63)],
      ).join();
}
