import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle/constants/words.dart';
import 'package:wordle/logic/game_logic.dart';
import 'package:wordle/providers/theme_provider.dart';
import 'package:wordle/widgets/end_popup.dart';
import 'package:wordle/widgets/keyboard.dart';
import 'package:wordle/widgets/letter_tile.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  GameLogic game = GameLogic();
  late List<String> words;

  void resetWord() {
    setState(() {
      String word = Words().randomWord();
      game.resetGame(word);
    });
    debugPrint(game.word);
  }

  @override
  void initState() {
    resetWord();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "W O R D L E",
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: List.generate(6, (int n) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(game.word.length, (int x) {
                  return LetterTile(
                      status: game.tileStatus[n][x],
                      char: game.tileLetter[n][x]);
                }),
              );
            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    context.watch<ThemeProvider>().getBlank,
                  ),
                ),
                onPressed: resetWord,
                child: Icon(
                  Icons.restart_alt,
                  size: 48,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    context.watch<ThemeProvider>().getBlank,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    bool b = game.guess();
                    if (!b) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Invalid word"),
                      ));
                    }
                  });
                  if (game.hasWon || game.tried == 6) {
                    Future.delayed(Duration(milliseconds: 300), () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return EndPopup(
                              game: game,
                              resetGame: resetWord,
                            );
                          });
                    });
                  }
                },
                child: Icon(
                  Icons.forward_outlined,
                  size: 48,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
            ],
          ),
          Keyboard(
              onClick: (String s) {
                setState(() {
                  game.updateWord(s);
                });
              },
              keyStatus: game.keyStatus),
        ],
      ),
    );
  }
}
