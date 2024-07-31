import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const reusableContainerColor = Color.fromARGB(255, 233, 175, 214);

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(children: <Widget>[
        Expanded(
            child: Row(children: <Widget>[
          Expanded(
            child: ReusableContainer(
                colour: reusableContainerColor,
                cardChild: Column(
                  children: const <Widget>[
                    Icon(FontAwesomeIcons.mars, size: 80.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('MALE')
                  ],
                )),
          ),
          Expanded(
            child: ReusableContainer(
                colour: reusableContainerColor,
                cardChild: Column(
                  children: const <Widget>[
                    Icon(FontAwesomeIcons.mars, size: 80.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('FEMALE')
                  ],
                )),
          ),
        ])),
        Expanded(
          child: ReusableContainer(
              colour: reusableContainerColor,
              cardChild: Column(
                children: const <Widget>[
                  Icon(FontAwesomeIcons.mars, size: 80.0),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('MALE')
                ],
              )),
        ),
        Expanded(
            child: Row(children: <Widget>[
          Expanded(
            child: ReusableContainer(
                colour: reusableContainerColor,
                cardChild: Column(
                  children: const <Widget>[
                    Icon(FontAwesomeIcons.mars, size: 80.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('MALE')
                  ],
                )),
          ),
          Expanded(
            child: ReusableContainer(
                colour: reusableContainerColor,
                cardChild: Column(
                  children: const <Widget>[
                    Icon(FontAwesomeIcons.mars, size: 80.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('MALE')
                  ],
                )),
          ),
        ]))
      ]),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  ReusableContainer({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: cardChild,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)));
  }
}
