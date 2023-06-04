import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:omosa/classes/functions/screen1/function_class.dart';
import 'package:omosa/presentation/constants/widgets/widgets.dart';

class _CustomContainerChildren {
  Widget maleIcon() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          MdiIcons.genderMale,
          size: 80,
          color: Colors.lightBlue,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'MALE',
            style: kDefaultTextStyle
          ),
        )
      ],
    );
  }

  Widget femaleIcon() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          MdiIcons.genderFemale,
          size: 80,
          color: Colors.pinkAccent,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'FEMALE',
            style: kDefaultTextStyle
          ),
        )
      ],
    );
  }

  Widget heightBoxElements(Widget child) {
    //final double intValue;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('HEIGHT',style: kDefaultTextStyle),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  functionClass.heightValue.toString(),
                  style: kHeadStyle
                ),
                const Text('cm')
              ],
            ),
          ),
        ),
        child
      ],
    );
  }

  Widget weightBoxElements(Widget child) {
    //final double intValue;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('WEIGHT',style: kDefaultTextStyle),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  functionClass.weightValue.toString(),
                  style: kHeadStyle,
                ),
                const Text('kg')
              ],
            ),
          ),
        ),
        child
      ],
    );
  }

  Widget ageBoxElements(Widget child) {
    //final double intValue;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('AGE',style: kDefaultTextStyle,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            functionClass.ageValue.toString(),
            style:kHeadStyle
          ),
        ),
        child
      ],
    );
  }
}

_CustomContainerChildren containerChild = _CustomContainerChildren();
