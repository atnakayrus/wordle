enum TileStatus { unused, right, misused, wrong }

enum ThemeNames { light, dark, blue, pink }

class EnumConverters {
  String ThemeNamesToString(ThemeNames? theme) {
    switch (theme) {
      case ThemeNames.light:
        return "light";
      case ThemeNames.dark:
        return "dark";
      case ThemeNames.blue:
        return "blue";
      case ThemeNames.pink:
        return "pink";
      default:
        return "light";
    }
  }

  ThemeNames ThemeNamesFromString(String theme) {
    switch (theme) {
      case "light":
        return ThemeNames.light;
      case "dark":
        return ThemeNames.dark;
      case "blue":
        return ThemeNames.blue;
      case "pink":
        return ThemeNames.pink;
      default:
        return ThemeNames.dark;
    }
  }

  String TileStatusToString(TileStatus? status) {
    switch (status) {
      case TileStatus.unused:
        return "unused";
      case TileStatus.right:
        return "right";
      case TileStatus.wrong:
        return "wrong";
      case TileStatus.misused:
        return "misused";
      default:
        return "unused";
    }
  }

  TileStatus TileStatusFromString(String theme) {
    switch (theme) {
      case "unused":
        return TileStatus.unused;
      case "right":
        return TileStatus.right;
      case "wrong":
        return TileStatus.wrong;
      case "misused":
        return TileStatus.misused;
      default:
        return TileStatus.unused;
    }
  }
}
