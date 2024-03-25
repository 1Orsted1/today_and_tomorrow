import 'package:flutter/material.dart';

class AppTheme {
  static const coloScheme = ColorScheme.light(
    primary: Color(0xffEF6364),
    secondary: Color(0xff256486),
    surface: Color(0xFFFEF1EF),
    background: Colors.white,
    onBackground: Color(0xff256486),
  );

  static final appBarTheme = AppBarTheme(
    foregroundColor: coloScheme.secondary,
    actionsIconTheme: IconThemeData(color: coloScheme.primary),
  );
}
