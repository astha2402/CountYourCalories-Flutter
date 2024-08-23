import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({required this.ic, required this.onPressed});

  final IconData ic;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(ic),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(height: 56.0, width: 56.0),
      shape: const CircleBorder(),
      fillColor: const Color.fromARGB(255, 168, 168, 168),
    );
  }
}