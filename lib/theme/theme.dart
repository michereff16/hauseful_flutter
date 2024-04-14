import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF043C5C),
  ),
  scaffoldBackgroundColor: Colors.grey[100],
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF043C5C),
  ),
);


// colorScheme: ColorScheme.fromSeed(
//     seedColor: const Color(0xFF043C5C),
//   ),