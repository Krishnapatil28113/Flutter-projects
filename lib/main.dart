import 'package:bmicalc/input.dart';
import 'package:bmicalc/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_content.dart';
import 'Reusable_card.dart';

void main() {
  runApp(BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  const BMIcalculator({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => InputPage(),
      //   'first': (context) => ResultsPage(),
      // },
      home: InputPage(),
    );
  }
}
