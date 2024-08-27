import 'package:bmi_flutter/components/constant.dart';
import 'package:bmi_flutter/screens/calculationSelection.dart';
import 'package:flutter/material.dart';
import 'screens/inputpage.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: headBottomColour,
            toolbarTextStyle: labelStyle,
          ),
          brightness: Brightness.dark,
          primaryColor: headBottomColour,
          scaffoldBackgroundColor: bgcolor,
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: Colors.purple)),
      home: const Calculationselection(),
    );
  }
}
