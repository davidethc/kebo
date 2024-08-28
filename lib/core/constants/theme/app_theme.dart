import 'package:flutter/material.dart';

// Definir los colores personalizados para tu tema
const Color _primaryColor =
    Color.fromARGB(255, 226, 119, 38); // Morado personalizado
const Color _secondaryColor = Color(0xFF4B0082); // Un morado más oscuro

// Define los temas de color disponibles
const List<Color> _colorThemes = [
  _primaryColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      primaryColor: _colorThemes[selectedColor],
      appBarTheme: const AppBarTheme(
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: _secondaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.white),
        titleLarge: TextStyle(
            fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.white),
        bodyMedium: TextStyle(fontSize: 14.0, color: Colors.white),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        hintStyle: const TextStyle(color: Colors.white54),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: _primaryColor,
      ),
    );
  }
}
