import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
}

CustomContainerChildren containerChild = CustomContainerChildren();
