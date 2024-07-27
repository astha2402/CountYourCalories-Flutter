import 'package:flutter/material.dart';

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
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: <Widget>[
        Expanded(
            child: Row(children: <Widget>[
          Expanded(
            child:
                ReusableContainer(colour: Color.fromARGB(255, 233, 175, 214)),
          ),
          Expanded(
            child:
                ReusableContainer(colour: Color.fromARGB(255, 233, 175, 214)),
          ),
        ])),
        Expanded(
          child: ReusableContainer(colour: Color.fromARGB(255, 233, 175, 214)),
        ),
        Expanded(
            child: Row(children: <Widget>[
          Expanded(
            child:
                ReusableContainer(colour: Color.fromARGB(255, 233, 175, 214)),
          ),
          Expanded(
            child:
                ReusableContainer(colour: Color.fromARGB(255, 233, 175, 214)),
          ),
        ]))
      ]),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  ReusableContainer({required this.colour}) {}

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)));
  }
}
