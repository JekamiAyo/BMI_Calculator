import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  int height;
  int weight;

  late double _bmi; //late means i would initialize later.

  String calculateBMI(){//we say string so that we would display it in place of the text in the result page
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);//this allows us to convert the decimal to a 1 d.p figure, then convert it to a string
  }

  String getResult(){
    if (_bmi > 25){
      return 'Overweight';
    }else if(_bmi >= 18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if (_bmi > 25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(_bmi >= 18.5){
      return 'You have a normal body weight. Good job!';
    }else {
      return 'You have a lower than normal body weight. Try to exercise more.';
    }
  }
}