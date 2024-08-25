import 'package:flutter/material.dart';
import 'package:wordle/constants/types.dart';
import 'package:wordle/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:wordle/providers/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(ThemeNames.dark),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.watch<ThemeProvider>().getTheme,
      home: const HomePage(),
    );
  }
}
