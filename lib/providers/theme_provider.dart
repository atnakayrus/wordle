import 'package:flutter/material.dart';
import 'package:wordle/constants/types.dart';
import 'package:wordle/constants/themes.dart';

ThemeData themer(ThemeNames name) {
  switch (name) {
    case ThemeNames.light:
      return Themes().lightTheme;
    case ThemeNames.dark:
      return Themes().darkTheme;
    case ThemeNames.blue:
      return Themes().blueTheme;
    case ThemeNames.pink:
      return Themes().pinkTheme;
    default:
      return Themes().lightTheme;
  }
}

class ThemeProvider extends ChangeNotifier {
  late ThemeData theme;
  ThemeProvider(ThemeNames name) {
    theme = themer(name);
  }

  ThemeData get getTheme => theme;

  void updateTheme(ThemeNames name) {
    theme = themer(name);
    notifyListeners(); // Notify listeners that the data has changed
  }
}
