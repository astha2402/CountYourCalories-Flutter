import 'package:bmi_flutter/components/BottomWidget.dart';
import 'package:bmi_flutter/components/iconCard.dart';
import 'package:bmi_flutter/components/reusable_card.dart';
import 'package:bmi_flutter/screens/inputpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'activityselection.dart';
import 'package:bmi_flutter/components/constant.dart';

class Calculationselection extends StatelessWidget {
  const Calculationselection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('BMR CALCULATOR', style: labelStyle)),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ReusableContainer(
                colour: reusableContainerColor,
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPage()));
                },
                cardChild: iconCard(
                    label: "CALCULATE BMI", ic: FontAwesomeIcons.weightScale),
              ),
            ),
            Expanded(
              child: ReusableContainer(
                colour: reusableContainerColor,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ActivitySelection()));
                },
                cardChild: iconCard(
                    label: "CALCULATE BMR", ic: FontAwesomeIcons.appleWhole),
              ),
            )
          ],
        ));
  }
}
