import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. How about some exercise?';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. How about some food?';
    }
  }

  String getInformation() {
    if (_bmi >= 25) {
      return 'Overweight BMI range: \n >= 25 kg/m2';
    } else if (_bmi > 18.5) {
      return 'Normal BMI range: \n 18.5 - 25 kg/m2';
    } else {
      return 'Underweight BMI range: \n < 18.5 kg/m2';
    }
  }
}
