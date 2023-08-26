import 'package:flutter/material.dart';
import 'constant.dart';
import 'results_page.dart';
import 'package:bmicalc/calculator_brain.dart';

class Bottom_button extends StatelessWidget {
  const Bottom_button(
    this.text,
    // this.height,
    // this.weight,
      // this.onTap(),
  );

  final String text;
  // final int height;
  // final int weight;
  // final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                  calc.GetResult(),
                  calc.GetDescription(),//resultText//bmiresult
                  calc.GetInterpretation(),//interpretation
                )));
      },
      child: Container(
        height: 80.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 76, 35, 237),
          // borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}