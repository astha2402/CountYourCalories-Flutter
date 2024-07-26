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
            child: Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    
                    color: Color.fromARGB(255, 233, 175, 214),
                    borderRadius: BorderRadius.circular(10.0))),
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 233, 175, 214),
                    borderRadius: BorderRadius.circular(10.0))),
          ),
        ])),
        Expanded(
          child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 175, 214),
                  borderRadius: BorderRadius.circular(10.0))),
        ),
        Expanded(
            child: Row(children: <Widget>[
          Expanded(
            child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 233, 175, 214),
                    borderRadius: BorderRadius.circular(10.0))),
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 233, 175, 214),
                    borderRadius: BorderRadius.circular(10.0))),
          ),
        ]))
      ]),
    );
  }
}
