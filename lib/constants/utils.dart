import 'package:flutter/material.dart';
import 'package:wordle/constants/themes.dart';
import 'package:wordle/constants/types.dart';

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
