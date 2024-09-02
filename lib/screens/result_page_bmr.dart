import 'package:bmi_flutter/screens/inputpage_bmi.dart';
import 'package:bmi_flutter/components/reusable_card.dart';
import 'package:bmi_flutter/screens/inputpage_bmr.dart';
import 'package:flutter/material.dart';
import '../components/constant.dart';

class ResultsPageBMR extends StatelessWidget {
  ResultsPageBMR({required this.bmr});

  final String bmr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'BMR CALCULATOR',
          style: labelStyle,
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: const Text("YOUR RESULT", style: titleTextstyle),
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
                  Text(bmr, style: labelStyle),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPageBMR(),
                ),
              );
            },
            child: Container(
              color: headBottomColour,
              padding: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 50.0,
              child: Center(
                child: Text("RE-CALCULATE", style: labelStyle),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
