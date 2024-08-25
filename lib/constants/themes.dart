import 'package:flutter/material.dart';

class Themes {
  ThemeData lightTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.greenAccent,
      brightness: Brightness.light,
    ),
  );
  ThemeData darkTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purple[800]!,
      brightness: Brightness.dark,
    ),
  );
  ThemeData pinkTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.pink[400]!,
      brightness: Brightness.light,
    ),
  );
  ThemeData blueTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue[600]!,
      brightness: Brightness.light,
    ),
  );
}
