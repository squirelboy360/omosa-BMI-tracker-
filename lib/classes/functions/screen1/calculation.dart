import 'dart:math';

class Calculator {
  int height;
  int weight;

  Calculator({
    required this.height,
    required this.weight,
});

  double _bmi=0.0;
  String calculate(){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String results(){
    if(_bmi >=25){
      return 'OverWeight🥲';
  }else if(_bmi > 18.5){
      return 'Normal';
  }else{
      return 'UnderWeight';
  }
}

  String detail(){
    if(_bmi >=25){
      return 'Ohh no 🙁, you need to put a little more work';
    }else if(_bmi > 18.5){
      return 'Your are perfect 🤩. Keep following your routine to maintain your BMI.';
    }else{
      return 'You are underWeight 😌, you need to consider putting on some weight';
    }
  }
}