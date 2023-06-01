import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:omosa/classes/functions/screen1/function_class.dart';

class CustomContainerChildren {
  Widget maleIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          MdiIcons.genderMale,
          size: 80,
          color: Colors.black54,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Male',
            style: GoogleFonts.aBeeZee(fontSize: 25, color: Colors.white54),
          ),
        )
      ],
    );
  }

  Widget femaleIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          MdiIcons.genderFemale,
          size: 80,
          color: Colors.black54,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Female',
            style: GoogleFonts.aBeeZee(fontSize: 25, color: Colors.white54),
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
        const Text('Height'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                functionClass.heightValue.toString(),
                style: const TextStyle(fontSize: 50),
              ),
              const Text('cm')
            ],
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
        const Text('Weight'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                functionClass.weightValue.toString(),
                style: const TextStyle(fontSize: 50),
              ),
              const Text('kg')
            ],
          ),
        ),
        child
      ],
    );
  }
}

CustomContainerChildren containerChild = CustomContainerChildren();
