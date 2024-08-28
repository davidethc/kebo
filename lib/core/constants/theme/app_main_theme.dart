// app_main_theme.dart
import 'package:flutter/material.dart';

class AppMainTheme {
  static ThemeData get mainTheme {
    return ThemeData(
      useMaterial3: true,
      hintColor: Colors.purpleAccent,
      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(fontSize: 16),
      ),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
          .copyWith(background: Colors.white),
      // Agrega más configuraciones de tema aquí si es necesario
    );
  }
}
