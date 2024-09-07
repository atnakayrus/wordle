import 'package:wordle/constants/types.dart';

class SettingsData {
  late ThemeNames theme;

  SettingsData({this.theme = ThemeNames.light});

  SettingsData.fromJson(Map<String, dynamic> json) {
    theme = EnumConverters().ThemeNamesFromString(json['theme']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['theme'] = EnumConverters().ThemeNamesToString(this.theme);
    return data;
  }

  void updateSetting({ThemeNames? theme}) {
    this.theme = theme ?? this.theme;
  }
}
