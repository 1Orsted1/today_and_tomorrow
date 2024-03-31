import 'package:flutter/material.dart';

class AppTheme {
  static const colorScheme = ColorScheme.light(
    primary: Color(0xffEF6364),
    onPrimary: Color(0xFFFEF1EF),
    secondary: Color(0xff256486),
    surface: Color(0xFFFEF1EF),
    background: Colors.white,
    onBackground: Color(0xff256486),
    secondaryContainer: Color(0xff256486),
  );

  static final appBarTheme = AppBarTheme(
    foregroundColor: colorScheme.secondary,
    actionsIconTheme: IconThemeData(color: colorScheme.primary),
    iconTheme: IconThemeData(color: colorScheme.primary),
    centerTitle: false,
  );

  static final elevatedButtonStyle = ElevatedButtonThemeData(
    style: ButtonStyle(
      animationDuration: Duration.zero,
      backgroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return const Color(0xff256486).withOpacity(0.29);
        } else {
          return colorScheme.primary.withOpacity(0.8);
        }
      }),
      foregroundColor: MaterialStatePropertyAll<Color>(colorScheme.onPrimary),
      shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return RoundedRectangleBorder(
            side: BorderSide(
                width: 2, color: const Color(0xff324B4C).withOpacity(0.29)),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          );
        } else {
          return RoundedRectangleBorder(
            side: BorderSide(width: 2, color: colorScheme.primary),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          );
        }
      }),
    ),
  );

  static var inputDecorationTheme = InputDecorationTheme(
    focusColor: colorScheme.primary,
    errorStyle: const TextStyle(height: 0.5),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorScheme.secondary),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorScheme.error),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorScheme.primary),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorScheme.primary),
    ),
    contentPadding: const EdgeInsets.all(8.0),
    floatingLabelStyle: MaterialStateTextStyle.resolveWith(
      (Set<MaterialState> states) {
        Color color = colorScheme.primary;
        if (states.contains(MaterialState.error)) color = colorScheme.error;
        if (states.isEmpty) color = colorScheme.secondary;
        return TextStyle(color: color, letterSpacing: 1.3);
      },
    ),
    labelStyle: MaterialStateTextStyle.resolveWith(
      (Set<MaterialState> states) {
        Color color = colorScheme.primary;
        if (states.contains(MaterialState.error)) color = colorScheme.error;
        if (states.isEmpty) color = colorScheme.secondary;
        return TextStyle(color: color, letterSpacing: 1.3);
      },
    ),
    suffixIconColor: MaterialStateColor.resolveWith(
      (Set<MaterialState> states) {
        Color color = colorScheme.primary;
        if (states.contains(MaterialState.error)) color = colorScheme.error;
        if (states.isEmpty) color = colorScheme.secondary;
        return color;
      },
    ),
    fillColor: colorScheme.background,
    filled: true,
  );

  static final textTheme = TextTheme(
      // bodyMedium: TextStyle(
      //   color: colorScheme.secondary,
      // ),
      // bodyLarge: TextStyle(
      //   color: colorScheme.secondary,
      // ),
      // bodySmall: TextStyle(
      //   color: colorScheme.secondary,
      // ),
      // labelMedium: TextStyle(
      //   color: colorScheme.secondary,
      // ),
      //   bodyMedium: TextStyle(
      //   color: colorScheme.secondary,
      // ),
      //   bodyMedium: TextStyle(
      //   color: colorScheme.secondary,
      // ),
      //   bodyMedium: TextStyle(
      //   color: colorScheme.secondary,
      // ),
      //   bodyMedium: TextStyle(
      //   color: colorScheme.secondary,
      // ),
      //   bodyMedium: TextStyle(
      //   color: colorScheme.secondary,
      // ),
      //   bodyMedium: TextStyle(
      //   color: colorScheme.secondary,
      // ),
      //   bodyMedium: TextStyle(
      //   color: colorScheme.secondary,
      // ),
      //   bodyMedium: TextStyle(
      //   color: colorScheme.secondary,
      // ),
      );
}
