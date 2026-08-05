import 'package:flutter/material.dart';

//Recordar que el _ en las variables es para hacerlas privadas
const Color _customColor = Color(0XFF5C11D4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  //Usar un =0 en lugar de required, hace que el valor 0 sea un vlaor predefinido
  AppTheme({this.selectedColor = 0})
    : assert(selectedColor >= 0 && selectedColor < _colorThemes.length) {
    ('Los valores deben estar entre 0 y ${_colorThemes.length}');
  }

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
