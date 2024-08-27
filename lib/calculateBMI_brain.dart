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

  String interpretation() {
    double bmi = weight / pow(height / 100, 2);
    if (bmi >= 25) {
      return "Your BMI is quite high. You should consume less calories.";
    } else if (bmi >= 18.5) {
      return "Your BMI is perfect.";
    } else {
      return "Your BMI is quite low. You should consume more calories.";
    }
  }
}
