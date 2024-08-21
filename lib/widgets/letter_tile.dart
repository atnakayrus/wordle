import 'package:flutter/material.dart';
import 'package:wordle/constants/appstyle.dart';
import 'package:wordle/constants/config.dart';
import 'package:wordle/constants/types.dart';

class LetterTile extends StatelessWidget {
  final TileStatus status;
  final String char;
  final bool isLarge;
  final double width, height;
  const LetterTile(
      {super.key,
      required this.status,
      required this.char,
      this.isLarge = true,
      this.height = 52,
      this.width = 48});

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
    return AnimatedContainer(
      duration: Config().animationDuration,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isLarge ? 10 : 4),
        color: colorDecider(status),
        boxShadow: [isLarge ? AppStyle().tileShadow : AppStyle().keyShadow],
      ),
      height: height,
      width: width,
      margin: isLarge
          ? const EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 8)
          : const EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: 2),
      child: Center(
        child: Text(
          char.toUpperCase(),
          style: isLarge ? AppStyle().tileStyle : AppStyle().keyStyle,
        ),
      ),
    );
  }
}
