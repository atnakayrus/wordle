import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wordle/hive/hive_utils.dart';
import 'package:wordle/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:wordle/providers/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  // ignore: unused_local_variable
  var mybox = await Hive.openBox('wordle');

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(HiveUtils().getTheme()),
      ),
    ],
    child: const MyApp(),
  ));
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
