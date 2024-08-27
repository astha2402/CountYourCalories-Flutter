import 'package:bmi_flutter/screens/inputpage1.dart';
import 'package:bmi_flutter/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/constant.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmi, required this.result, required this.interpretation});

  final String bmi;
  final String result;
  final String interpretation;

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
                  Text(result, style: labelStyle),
                  Text(bmi, style: numberStyle),
                  Text(interpretation, style: labelStyle)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
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
