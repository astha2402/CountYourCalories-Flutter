import 'dart:math';

class CalculateBrain {
  CalculateBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  String calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String calculateResult() {
    double bmi = weight / pow(height / 100, 2);
    if (bmi >= 25) {
      return "OVERWEIGHT";
    } else if (bmi >= 18.5) {
      return "NORMAL";
    } else {
      return "UNDER-WEIGHT";
    }
  }
}
