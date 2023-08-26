import 'package:bmicalc/constant.dart';
import 'package:bmicalc/input.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(this.bmiResult, this.resultText, this.interpretation);

  String resultText;
  final String bmiResult;
  final String interpretation;
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator',textAlign: TextAlign.center,),
        ),
        backgroundColor: backColourAppbar,
      ),
      backgroundColor: backColourScaffold,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Your Result',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 40.0,
            // ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 76, 35, 237),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.only(top: 20.0),
                width: double.infinity,
                // color: Colors.cyan,
                height: 600.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // SizedBox(
                    //   height: 30.0,
                    // ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.cyan.shade600,
                      ),
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                      ),
                    ),
                    
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Save Result',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        ),
                      style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(5.0),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.blue.shade700),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  height: 80.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 76, 35, 237),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Center(
                    child: Text(
                      'Re-Calculate BMI',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
          ],
        ),
      ),
    );
  }
}

// color: Color.fromARGB(255, 76, 35, 237),
