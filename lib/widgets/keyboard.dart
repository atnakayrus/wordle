import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle/constants/appstyle.dart';
import 'package:wordle/constants/config.dart';
import 'package:wordle/constants/types.dart';
import 'package:wordle/providers/theme_provider.dart';
import 'package:wordle/widgets/letter_tile.dart';

class Keyboard extends StatelessWidget {
  final Function(String s) onClick;
  final Map<String, TileStatus> keyStatus;
  const Keyboard({super.key, required this.onClick, required this.keyStatus});

  final List<String> keys1 = const [
    'Q',
    'W',
    'E',
    'R',
    'T',
    'Y',
    'U',
    'I',
    'O',
    'P'
  ];
  final List<String> keys2 = const [
    'A',
    'S',
    'D',
    'F',
    'G',
    'H',
    'J',
    'K',
    'L'
  ];
  final List<String> keys3 = const [
    'Z',
    'X',
    'C',
    'V',
    'B',
    'N',
    'M',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: keys1.map((String element) {
            return GestureDetector(
              onTap: () {
                onClick(element);
              },
              child: LetterTile(
                status: keyStatus[element] ?? TileStatus.unused,
                char: element,
                isLarge: false,
                width: Config().getLogicalSize().width / keys1.length - 6,
                height: Config().getLogicalSize().width / 8,
              ),
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: keys2.map((String element) {
            return GestureDetector(
              onTap: () {
                onClick(element);
              },
              child: LetterTile(
                status: keyStatus[element] ?? TileStatus.unused,
                char: element,
                isLarge: false,
                width: Config().getLogicalSize().width / keys2.length - 6,
                height: Config().getLogicalSize().width / 8,
              ),
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ...keys3.map((String element) {
              return GestureDetector(
                onTap: () {
                  onClick(element);
                },
                child: LetterTile(
                  status: keyStatus[element] ?? TileStatus.unused,
                  char: element,
                  isLarge: false,
                  width:
                      Config().getLogicalSize().width / (keys3.length + 2) - 6,
                  height: Config().getLogicalSize().width / 8,
                ),
              );
            }),
            TextButton(
                style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsets.zero)),
                onPressed: () {
                  onClick('back');
                },
                child: Container(
                  height: Config().getLogicalSize().width / 8,
                  width: Config().getLogicalSize().width / 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: context.watch<ThemeProvider>().getBlank,
                    boxShadow: [AppStyle().keyShadow],
                  ),
                  child: Icon(
                    Icons.backspace_outlined,
                    size: Config().getLogicalSize().width / 15,
                    color: Theme.of(context).primaryColorDark,
                  ),
                ))
          ],
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
