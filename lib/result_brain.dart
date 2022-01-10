import 'dart:math';

class ResultBrain {
  double _bmi;

  double calculateBMI(double height, double weight){
    _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }
}

