import 'package:flutter/material.dart';

const List<Color> _colorThemes = [
  Colors.black,
  Colors.white,
  Colors.yellow,
  Colors.red,
  Colors.orange,
  Colors.teal,
  Colors.blue,
  Colors.pink
];

class appTheme {
  final int selectedColor;

  appTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length,
            "El color seleccionado no existe (0 - ${_colorThemes.length - 1})");

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor], brightness: Brightness.light);
  }
}
