import 'package:flutter/material.dart';
import 'constant.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.onTap,
      required this.heightButton,
      required this.buttonLabel});

  final GestureTapCallback onTap;
  final double heightButton;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: headBottomColour,
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        height: heightButton,
        child: Center(
          child: Text(
            buttonLabel,
            style: labelStyle,
          ),
        ),
      ),
    );
  }
}
