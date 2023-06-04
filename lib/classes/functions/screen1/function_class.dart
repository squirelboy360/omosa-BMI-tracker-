import 'dart:ui';

import 'package:omosa/presentation/constants/colors/pallete.dart';

class _FunctionClass {
  double heightValue = 150.00;
  double weightValue = 5;
  int ageValue = 0;
  Color activeColorValue = kDefaultBlueAlpha;
  Color inActiveColorValue = kDefaultBlue;

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
