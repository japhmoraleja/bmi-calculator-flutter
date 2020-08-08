import 'dart:math';

class CalculatorLogic {
  CalculatorLogic({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi < 30 && _bmi >= 25) {
      return 'Overweight';
    } else if (_bmi < 25 && _bmi >= 18.5) {
      return 'Normal';
    } else if (_bmi < 18.5) {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'You are obese.';
    } else if (_bmi < 30 && _bmi >= 25) {
      return 'You are overweight.';
    } else if (_bmi < 25 && _bmi >= 18.5) {
      return 'You are normal.';
    } else if (_bmi < 18.5) {
      return 'You are underweight.';
    }
  }
}

// 30 above = obese
// 25-30 = overweight
// 18.5-25 = normal
// 18.5 below = underweight
