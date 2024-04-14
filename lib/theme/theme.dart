import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF043C5C),
    background: Color(0xFFF5F5F5),
    secondary: Colors.white,
    tertiary: Colors.black,
  ),
  // scaffoldBackgroundColor: Colors.grey[100],
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF0CA6FF),
    background: Color(0xFF424242),
    secondary: Colors.grey,
    tertiary: Colors.white,
  ),
);
