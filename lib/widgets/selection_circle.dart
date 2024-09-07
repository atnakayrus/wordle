import 'package:flutter/material.dart';

class SelectionCircle extends StatelessWidget {
  final bool isSelected;
  final Color color;
  const SelectionCircle(
      {super.key, required this.isSelected, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: isSelected ? Border.all(color: color, width: 2) : null,
      ),
      child: Center(
        child: Container(
          height: isSelected ? 15 : 25,
          width: isSelected ? 15 : 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: color,
          ),
        ),
      ),
    );
  }
}
