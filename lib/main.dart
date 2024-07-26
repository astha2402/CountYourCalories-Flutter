import 'package:flutter/material.dart';
import 'inputpage.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color.fromARGB(255, 230, 59, 130),
          scaffoldBackgroundColor: const Color.fromARGB(255, 168, 3, 72),
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: Colors.purple)),
      home: InputPage(),
    );
  }
}
