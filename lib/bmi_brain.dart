import 'dart:math';

class BmiBrain {
  int height, weight;
  late double _bmi;
  late String bmiResult, bmiInterpretation;
  BmiBrain({required this.height, required this.weight});

  void calcBmi() {
    _bmi = weight / (pow(height / 100, 2));
  }

  String getBMI() {
    return _bmi.toStringAsFixed(2);
  }

  String getBmiResult() {
    if (_bmi < 18.5)
      bmiResult = 'UNDERWEIGHT';
    else if (_bmi < 25.0)
      bmiResult = 'NORMAL';
    else if (_bmi < 30.0)
      bmiResult = 'OVERWEIGHT';
    else
      bmiResult = 'OBESE';
    return bmiResult;
  }

  String getBmiInterpretation() {
    if (_bmi < 18.5)
      bmiInterpretation =
          'You are underweight. Ask doctor or a dietitian for advice to help put on some weight.';
    else if (_bmi < 25.0)
      bmiInterpretation =
          'You have a healthy weight. By maintaining a healthy weight you can significantly lower the risk of developing any serious health problems.';
    else if (_bmi < 30.0)
      bmiInterpretation =
          'You are slightly overweight. Try losing some weight for health reasons. Get advice from a doctor or a dietitian.';
    else
      bmiInterpretation =
          'You are obese. Your health may be at risk if you do not lose extra weight.';
    return bmiInterpretation;
  }
}
