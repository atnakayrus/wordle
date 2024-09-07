import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle/constants/appstyle.dart';
import 'package:wordle/constants/types.dart';
import 'package:wordle/constants/utils.dart';
import 'package:wordle/hive/hive_utils.dart';
import 'package:wordle/providers/theme_provider.dart';
import 'package:wordle/widgets/selection_circle.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  ThemeNames homeTheme = HiveUtils().getTheme();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('S E T T I N G S'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'S E L E C T   T H E M E :',
              style: AppStyle().keyStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ThemeNames.light,
                ThemeNames.dark,
                ThemeNames.blue,
                ThemeNames.pink
              ].map((theme) {
                return IconButton(
                    onPressed: () {
                      setState(() {
                        homeTheme = theme;
                        context.read<ThemeProvider>().updateTheme(theme);
                      });
                    },
                    icon: SelectionCircle(
                        isSelected: theme == homeTheme,
                        color: themer(theme).primaryColor));
              }).toList(),
            ),
          ],
        ),
      )),
    );
  }
}
