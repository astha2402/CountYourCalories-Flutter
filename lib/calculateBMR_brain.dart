import 'components/constant.dart';

class CalculatebmrBrain {
  CalculatebmrBrain(
      {required this.gender,
      required this.height,
      required this.weight,
      required this.age,
      required this.activity});

  final Gender gender;
  final int height;
  final int weight;
  final int age;
  final Activity activity;

  String calculateBMR() {
    double bmr = 0;
    if (gender == Gender.female) {
      bmr = 9.247 * weight + 3.098 * height - 4.330 * age + 447.593;
    } else if (gender == Gender.male) {
      bmr = 13.397 * weight + 4.799 * height - 5.677 * age + 88.362;
    }
    return bmr.toString();
  }

  String caloriesConsume() {
    if (activity == Activity.sedentary) {
      return "2060";
    } else if (activity == Activity.lightActive) {
      return "2361";
    } else if (activity == Activity.moderateActive) {
      return "2515";
    } else if (activity == Activity.heavyActive) {
      return "2661";
    }
    return "2962";
  }
}
