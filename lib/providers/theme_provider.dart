import 'package:flutter/material.dart';
import 'package:wordle/constants/types.dart';
import 'package:wordle/constants/utils.dart';
import 'package:wordle/hive/hive_utils.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData theme;
  late Color positive;
  late Color negative;
  late Color danger;
  late Color blank;
  ThemeProvider(ThemeNames name) {
    theme = themer(name);
    setColors(name);
  }

  ThemeData get getTheme => theme;
  Color get getPositive => positive;
  Color get getNegative => negative;
  Color get getDanger => danger;
  Color get getBlank => blank;

  void updateTheme(ThemeNames name) {
    theme = themer(name);
    setColors(name);
    HiveUtils().updateTheme(name);
    notifyListeners(); // Notify listeners that the data has changed
  }

  void setColors(ThemeNames name) {
    switch (name) {
      case ThemeNames.light:
        positive = const Color.fromARGB(255, 0, 208, 107);
        negative = const Color.fromARGB(255, 179, 157, 118);
        danger = const Color.fromARGB(255, 255, 210, 76);
        blank = const Color.fromARGB(255, 230, 210, 164);
        break;
      case ThemeNames.dark:
        positive = const Color.fromRGBO(0, 162, 84, 1);
        negative = const Color.fromRGBO(78, 78, 78, 0.5);
        danger = const Color.fromRGBO(200, 157, 31, 1);
        blank = const Color.fromRGBO(17, 17, 17, 0.5);
        break;
      case ThemeNames.blue:
        positive = const Color.fromARGB(255, 0, 208, 139);
        negative = const Color.fromARGB(255, 122, 180, 185);
        danger = const Color.fromARGB(255, 255, 234, 76);
        blank = const Color(0xFF71C9CE);
        break;
      case ThemeNames.pink:
        positive = const Color.fromARGB(255, 85, 198, 164);
        negative = const Color.fromARGB(255, 205, 123, 171);
        danger = const Color.fromARGB(255, 255, 237, 76);
        blank = const Color.fromARGB(255, 224, 149, 190);
        break;
    }
  }
}
