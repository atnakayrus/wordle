import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle/constants/appstyle.dart';
import 'package:wordle/constants/types.dart';
import 'package:wordle/pages/game_page.dart';
import 'package:wordle/pages/settings_page.dart';
import 'package:wordle/providers/theme_provider.dart';
import 'package:wordle/widgets/letter_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LetterTile(status: TileStatus.right, char: "W"),
                LetterTile(status: TileStatus.unused, char: "O"),
                LetterTile(status: TileStatus.misused, char: "R"),
                LetterTile(status: TileStatus.unused, char: "D"),
                LetterTile(status: TileStatus.wrong, char: "L"),
                LetterTile(status: TileStatus.unused, char: "E"),
              ],
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GamePage(),
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).highlightColor,
                    boxShadow: [AppStyle().tileShadow],
                  ),
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'P L A Y',
                    style: AppStyle()
                        .tileStyle
                        .copyWith(color: Theme.of(context).primaryColorDark),
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).highlightColor,
                    boxShadow: [AppStyle().tileShadow],
                  ),
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'SETTINGS',
                    style: AppStyle()
                        .tileStyle
                        .copyWith(color: Theme.of(context).primaryColorDark),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
