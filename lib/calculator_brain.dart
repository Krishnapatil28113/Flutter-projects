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
    else if(this._bmi <= 18.5){
      return 'Underweight';
    }
    else{
      return 'Normal';
    }
  }

  String GetInterpretation(){
    if(_bmi >= 25){
      return 'You have a higher than Normal body weight, try exercising more';
    }
    else if(_bmi <= 18.5){
      return 'You have a lesser than Normal body weight, try to eat more!';
    }
    else{
      return 'Congratulations! , You have a normal body weight!';
    }
  }
}

  