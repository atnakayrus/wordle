import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xffFAEED1),
      brightness: Brightness.light,
    ),
    primaryColor: Color(0xffFAEED1),
    primaryColorDark: Color(0xff111111),
    primaryColorLight: Color(0xffeeeeee),
    scaffoldBackgroundColor: Color(0xffFDF7E4),
    highlightColor: Color(0xffBBAB8C),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xffFDF7E4),
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 36,
        height: 1,
        color: Color(0xff111111),
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: Color(0xffFDF7E4),
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 36,
        height: 1,
        color: Color(0xff111111),
      ),
      contentTextStyle: GoogleFonts.poppins(
        fontSize: 22,
        color: Color(0xff111111),
        height: 2,
      ),
    ),
  );

  ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xff222831),
      brightness: Brightness.dark,
    ),
    primaryColor: Color(0xff222831),
    primaryColorDark: Color(0xffeeeeee),
    primaryColorLight: Color(0xff111111),
    scaffoldBackgroundColor: Color(0xff111111),
    highlightColor: Color(0xFF5C8374),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff111111),
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 36,
        height: 1,
        color: Color(0xffeeeeee),
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: Color(0xff111111),
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 36,
        height: 1,
        color: Color(0xffeeeeee),
      ),
      contentTextStyle: GoogleFonts.poppins(
        fontSize: 22,
        color: Color(0xffeeeeee),
        height: 2,
      ),
    ),
  );

  ThemeData blueTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFF71C9CE),
      brightness: Brightness.light,
    ),
    primaryColor: Color(0xFF71C9CE),
    primaryColorDark: Color(0xff111111),
    primaryColorLight: Color(0xffeeeeee),
    scaffoldBackgroundColor: Color(0xFFFA6E3E9),
    highlightColor: Color(0xFF3AADFF),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xffFA6E3E9),
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 36,
        height: 1,
        color: Color(0xff111111),
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: Color(0xffFA6E3E9),
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 36,
        height: 1,
        color: Color(0xff111111),
      ),
      contentTextStyle: GoogleFonts.poppins(
        fontSize: 22,
        color: Color(0xff111111),
        height: 2,
      ),
    ),
  );

  ThemeData pinkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFFF0A8D0),
      brightness: Brightness.light,
    ),
    primaryColor: Color(0xFFF0A8D0),
    primaryColorDark: Color(0xff111111),
    primaryColorLight: Color(0xffeeeeee),
    scaffoldBackgroundColor: Color(0xFFE1A7B9),
    highlightColor: Color.fromARGB(255, 237, 118, 200),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFFE1A7B9),
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 36,
        height: 1,
        color: Color(0xff111111),
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: Color(0xFFE1A7B9),
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 36,
        height: 1,
        color: Color(0xff111111),
      ),
      contentTextStyle: GoogleFonts.poppins(
        fontSize: 22,
        color: Color(0xff111111),
        height: 2,
      ),
    ),
  );
}
