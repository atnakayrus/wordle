import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle/constants/types.dart';
import 'package:wordle/providers/theme_provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('S E T T I N G S'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().updateTheme(ThemeNames.light);
              print(Theme.of(context).primaryColor);
            },
            icon: Icon(
              Icons.circle,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().updateTheme(ThemeNames.dark);
              print(Theme.of(context).primaryColor);
            },
            icon: Icon(
              Icons.circle,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().updateTheme(ThemeNames.blue);
              print(Theme.of(context).primaryColor);
            },
            icon: Icon(
              Icons.circle,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().updateTheme(ThemeNames.pink);
              print(Theme.of(context).primaryColor);
            },
            icon: Icon(
              Icons.circle,
              color: Colors.pink,
            ),
          ),
        ],
      )),
    );
  }
}
