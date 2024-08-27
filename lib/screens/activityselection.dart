import 'package:bmi_flutter/components/BottomWidget.dart';
import 'package:bmi_flutter/components/constant.dart';
import 'package:bmi_flutter/components/iconCard.dart';
import 'package:bmi_flutter/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'results_page.dart';

enum Activity {
  sedentary,
  lightActive,
  moderateActive,
  heavyActive,
  superActive
}

class ActivitySelection extends StatefulWidget {
  const ActivitySelection({super.key});

  @override
  State<ActivitySelection> createState() => _ActivitySelectionState();
}

class _ActivitySelectionState extends State<ActivitySelection> {
  @override
  Activity? personActive;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('BMR CALCULATOR', style: labelStyle)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(
                      onPress: () {
                        setState(() {
                          personActive = Activity.sedentary;
                        });
                      },
                      colour: reusableContainerColor,
                      cardChild: iconCard(
                          ic: FontAwesomeIcons.person, label: 'SEDENTARY')),
                ),
                Expanded(
                  child: ReusableContainer(
                      onPress: () {
                        setState(() {
                          personActive = Activity.lightActive;
                        });
                      },
                      colour: reusableContainerColor,
                      cardChild: iconCard(
                          ic: FontAwesomeIcons.personWalking,
                          label: 'LIGHTY ACTIVE')),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(
                      onPress: () {
                        setState(() {
                          personActive = Activity.moderateActive;
                        });
                      },
                      colour: reusableContainerColor,
                      cardChild: iconCard(
                          ic: FontAwesomeIcons.personRunning,
                          label: 'MODERATELY ACTIVE')),
                ),
                Expanded(
                  child: ReusableContainer(
                      onPress: () {
                        setState(() {
                          personActive = Activity.heavyActive;
                        });
                      },
                      colour: reusableContainerColor,
                      cardChild: iconCard(
                          ic: FontAwesomeIcons.personSwimming,
                          label: 'HEAVILY ACTIVE')),
                )
              ],
            )),
            Row(children: <Widget>[
              Expanded(
                child: ReusableContainer(
                    onPress: () {
                      setState(() {
                        personActive = Activity.superActive;
                      });
                    },
                    colour: reusableContainerColor,
                    cardChild: iconCard(
                        ic: FontAwesomeIcons.personDigging,
                        label: 'SUPER ACTIVE')),
              )
            ]),
            ButtonWidget(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ActivitySelection()));
                },
                heightButton: 50.0,
                buttonLabel: "CALCULATE BMR")
          ],
        ));
  }
}
