import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;
  double weighttoKG;
  double heighttoM;

  String calcBMI() {
    weighttoKG = weight * 0.453592;
    heighttoM = height * 0.0254;
    _bmi = weighttoKG / pow(heighttoM, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if (_bmi > 21.5) {
      return 'Normal - aint nothing wrong with that';
    } else {
      return 'EAT MORE FOOD!';
    }
  }
}
