// import 'package:flutter/material.dart';
// import 'dart:math';

// class CalculatorBrain{

//   int height;
//   int weight;
//   // double bmi=20;
//   double bmi; 
//   String _bmi='';

//   CalculatorBrain(
//     this.bmi,
//     this.height,
//     this.weight,
//   );

//   String GetResult()
//   {
//     this.bmi = weight/pow(height, 2);
//     this._bmi = bmi.toStringAsFixed(2);
//     return _bmi;
//   }

//   String GetDescription(){
//     if (this.bmi > 25){
//       return 'Overweight';
//     }
//     else if(this.bmi < 18){
//       return 'Underweight';
//     }
//     else{
//       return 'Normal';
//     }
//   }

//   String GetInterpretation(){
//     if (this.bmi > 25){
//       return 'You need to exercise';
//     }
//     else if(this.bmi < 18){
//       return 'You need to eat more';
//     }
//     else{
//       return 'You are normal...you just need to chill...euuuuuuu';
//     }
//   }
// }

import 'dart:math';

class CalculatorBrain{
  final int height;
  final int weight;
  double _bmi=0;

  CalculatorBrain({required this.height , required this.weight});

  String GetResult(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String GetDescription(){
    if(this._bmi >= 25.0){
      return 'Overweight';
    }
    else if(this._bmi >= 18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String GetInterpretation(){
    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try exercising more!';
    }
    else if(_bmi >= 18.5){
      return 'You have a normal body weight. GOOD JOB!!';
    }
    else{
      return 'You have a lesser than normal body weight. Eat more food!';
    }
  }
}

  