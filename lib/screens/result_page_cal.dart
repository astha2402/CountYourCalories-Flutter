import 'package:bmi_flutter/screens/activityselection.dart';
import 'package:bmi_flutter/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/constant.dart';

class ResultsPageCal extends StatelessWidget {
  const ResultsPageCal({super.key, required this.calorie});

  final String calorie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'CALORIES CALCULATOR',
          style: labelStyle,
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: const Center(
                child: Text("YOUR RESULT", style: titleTextstyle),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              colour: reusableContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(calorie, style: labelStyle),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ActivitySelection(),
                ),
              );
            },
            child: Container(
              color: headBottomColour,
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              height: 50.0,
              child: const Center(
                child: Text("RE-CALCULATE", style: labelStyle),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
