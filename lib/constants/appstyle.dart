import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  final Color positive = const Color.fromRGBO(0, 162, 84, 1);
  final Color negative = const Color(0xFF4E4E4E);
  final Color danger = const Color.fromRGBO(200, 157, 31, 1);
  final Color blank = const Color(0xFF111111);
}

class AppStyle {
  final TextStyle tileStyle = GoogleFonts.poppins(
    fontSize: 36,
    height: 1,
    color: Colors.white,
  );
  final TextStyle keyStyle = GoogleFonts.poppins(
    fontSize: 24,
    height: 1.25,
    color: Colors.white,
  );
  final tileShadow = const BoxShadow(
    color: Color.fromARGB(50, 255, 255, 255),
    offset: Offset(2, 2),
    blurRadius: 5,
    spreadRadius: 1,
  );
  final keyShadow = const BoxShadow(
    color: Color.fromARGB(30, 255, 255, 255),
    offset: Offset(2, 2),
    blurRadius: 3,
    spreadRadius: 1,
  );
}
