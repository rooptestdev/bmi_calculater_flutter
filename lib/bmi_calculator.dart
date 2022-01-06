import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;

  double? _bmi;

  BMICalculator({required this.weight, required this.height});

  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String bmiResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bmiAdvice() {
    if (_bmi! >= 25) {
      return 'You should workout to reduce weight, and stay healthy.';
    } else if (_bmi! > 18.5) {
      return 'Your weight is perfect, keep it up.';
    } else {
      return 'Your weight is very less, start eating healthy to gain weight.';
    }
  }
}
