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
                          ic: FontAwesomeIcons.person-walking, label: 'LIGHTY ACTIVE')),
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
                          ic: FontAwesomeIcons.person, label: 'MODERATELY ACTIVE')),
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
                          ic: FontAwesomeIcons.person-running, label: 'HEAVILY ACTIVE')),
                )
              ],
            )),
            Row(
              children: <Widget>[Expanded(
                child: ReusableContainer(
                    onPress: () {
                      setState(() {
                        personActive = Activity.superActive;
                      });
                    },
                    colour: reusableContainerColor,
                    cardChild: iconCard(
                        ic: FontAwesomeIcons.person, label: 'SUPER ACTIVE')),
              )
              ]
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ActivitySelection()
                    )));
              },
              child: Container(
                color: headBottomColour,
                padding: const EdgeInsets.all(10.0),
                width: double.infinity,
                height: 50.0,
                child: Center(
                  child: const Text("NEXT", style: labelStyle),
                ),
              ),
            ),
          ],
        ));
  }
}
