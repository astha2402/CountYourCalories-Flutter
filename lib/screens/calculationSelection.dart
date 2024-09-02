import 'package:bmi_flutter/components/iconCard.dart';
import 'package:bmi_flutter/components/reusable_card.dart';
import 'package:bmi_flutter/screens/inputpage_bmi.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'activityselection.dart';
import 'package:bmi_flutter/components/constant.dart';
import 'inputpage_bmr.dart';

class Calculationselection extends StatelessWidget {
  const Calculationselection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text('Count Your Calories', style: labelStyle)),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ReusableContainer(
                colour: reusableContainerColor,
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPageBMI()));
                },
                cardChild: iconCard(
                    label: "CALCULATE BMI", ic: FontAwesomeIcons.weightScale),
              ),
            ),
            Expanded(
              child: ReusableContainer(
                colour: reusableContainerColor,
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPageBMR()));
                },
                cardChild: iconCard(
                    label: "CALCULATE BMR", ic: FontAwesomeIcons.appleWhole),
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
                    label: "CALORIES COUNT", ic: FontAwesomeIcons.plateWheat),
              ),
            )
          ],
        ));
  }
}
