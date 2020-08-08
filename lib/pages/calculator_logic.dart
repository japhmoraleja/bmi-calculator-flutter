import 'dart:math';
import 'package:bmi_calculator/pages/constants.dart';

class CalculatorLogic {
  CalculatorLogic({this.heightCalculated, this.weightCalculated});

  final int heightCalculated;
  final int weightCalculated;

  double _bmi;

  String calculateBMI() {
    _bmi = weightInitial / pow(heightInitial / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  // String getResult() {
  //   if (_bmi >= 25) {
  //     return 'Overweight';
  //   } else if (_bmi > 18.5) {
  //     return 'Normal';
  //   } else {
  //     return 'Underweight';
  //   }
  // }

  // String getInterpretation() {
  //   if (_bmi >= 25) {
  //     return 'You have a higher than normal body weight. Try to exercise more.';
  //   } else if (_bmi >= 18.5) {
  //     return 'You have a normal body weight. Good job!';
  //   } else {
  //     return 'You have a lower than normal body weight. You can eat a bit more.';
  //   }
  // }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi < 30 && _bmi >= 25) {
      return 'Overweight';
    } else if (_bmi < 25 && _bmi >= 18.5) {
      return 'Normal';
    } else {
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
    } else {
      return 'You are underweight.';
    }
  }
}

// 30 above = obese
// 25-30 = overweight
// 18.5-25 = normal
// 18.5 below = underweight
