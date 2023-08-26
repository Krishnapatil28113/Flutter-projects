import 'package:bmicalc/constant.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
class IconContent extends StatelessWidget {
  const IconContent(
    this.text,
    this.cardIcon,
  );
  final String text;//male or female
  final IconData cardIcon;//venus or mars(male or female respectively)

  // @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
          color: Color.fromARGB(255, 76, 35, 237),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ],
    );
  }
}
