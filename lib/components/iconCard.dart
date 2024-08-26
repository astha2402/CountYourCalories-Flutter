import 'package:flutter/material.dart';

class iconCard extends StatelessWidget {
  iconCard({required this.label, required this.ic});

  final String label;
  final IconData ic;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(ic, size: 80.0),
        SizedBox(
          height: 15.0,
        ),
        Center(
          child: Text(label,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
