import 'components/constant.dart';

class CalculateCalories {
  CalculateCalories({required this.activity});

  final Activity activity;

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
