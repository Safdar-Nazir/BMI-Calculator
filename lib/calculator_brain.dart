import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int weight;
  final int height;

  double _bmi;

  String bmiValue() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String resultText() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.0) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String interpretation() {
    if (_bmi >= 25.0) {
      return 'You have higher than normal body weight. \nTry to exercise more.';
    } else if (_bmi > 18.0) {
      return 'You have a normal body weight. \nGood Job!';
    } else {
      return 'You have lower than normal body weight. \nTry to eat more.';
    }
  }
}
