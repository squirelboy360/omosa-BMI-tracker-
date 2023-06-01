import 'dart:ui';

import 'package:omosa/presentation/colors/pallete.dart';

class _FunctionClass {
  double heightValue = 30.00;
  double weightValue = 5;
  int ageValue = 0;

  Color activeColorValue = defaultBlueAlpha;
  Color inActiveColorValue = defaultBlue;

  void weightIncrement() {
    weightValue++;
  }

  void weightDecrement() {
    weightValue--;
  }

  void ageIncrement() {
    ageValue++;
  }

  void ageDecrement() {
    ageValue--;
  }
}

_FunctionClass functionClass = _FunctionClass();
