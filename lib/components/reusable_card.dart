import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Container(
            child: cardChild,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: colour, borderRadius: BorderRadius.circular(10.0))));
  }
}
