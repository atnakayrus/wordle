import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wordle/constants/appstyle.dart';
import 'package:wordle/constants/types.dart';
import 'package:wordle/logic/game_logic.dart';

class EndPopup extends StatelessWidget {
  final GameLogic game;
  final Function() resetGame;
  const EndPopup({super.key, required this.game, required this.resetGame});

  Color colorDecider(TileStatus status) {
    switch (status) {
      case TileStatus.right:
        return AppColors().positive;
      case TileStatus.wrong:
        return AppColors().negative;
      case TileStatus.misused:
        return AppColors().danger;
      default:
        return AppColors().blank;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        game.hasWon ? "Y O U W I N" : "Y O U L O S E",
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "The word was ${game.word}",
          ),
          const SizedBox(
            height: 20,
          ),
          ...List.generate(game.tried + (game.tried < 6 ? 1 : 0), (ele) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(game.word.length, (stat) {
                return Container(
                  height: 15,
                  width: 15,
                  color: colorDecider(game.tileStatus[ele][stat]),
                  margin: const EdgeInsets.all(3),
                );
              }),
            );
          })
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Cancel",
              style: GoogleFonts.poppins(
                fontSize: 24,
                height: 1.25,
                color: Theme.of(context).primaryColorDark,
              ),
            )),
        TextButton(
            onPressed: () {
              resetGame();
              Navigator.of(context).pop();
            },
            child: Text(
              "Restart",
              style: GoogleFonts.poppins(
                fontSize: 24,
                height: 1.25,
                color: Theme.of(context).primaryColorDark,
              ),
            )),
      ],
    );
  }
}
