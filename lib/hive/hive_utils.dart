import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wordle/constants/types.dart';
import 'package:wordle/models/settings_data.dart';

class HiveUtils {
  var mybox = Hive.box('wordle');

  ThemeNames getTheme() {
    String theme = mybox.get('theme') ?? '';
    if (theme == '') {
      final brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
      mybox.put('theme', brightness == Brightness.dark ? 'dark' : 'light');
    }
    return (EnumConverters().ThemeNamesFromString(theme));
  }

  void updateTheme(ThemeNames theme) {
    mybox.put('theme', EnumConverters().ThemeNamesToString(theme));
  }

  SettingsData getSettings() {
    String data = mybox.get('settings');
    if (data == '') {
      return SettingsData(theme: ThemeNames.light);
    }
    return SettingsData.fromJson(jsonDecode(data));
  }

  void saveSettings(SettingsData data) {
    mybox.put('settings', jsonEncode(data.toJson()));
  }
}
