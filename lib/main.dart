import 'package:flutter/material.dart';
import 'package:wordle/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.purple[800]!,
        brightness: Brightness.dark,
      )),
      home: const HomePage(),
    );
  }
}
