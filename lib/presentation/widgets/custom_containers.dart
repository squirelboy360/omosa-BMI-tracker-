import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:omosa/presentation/colors/pallete.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: defaultBlue),
        child: child,
      ),
    );
  }
}

class CustomCalcButton extends StatelessWidget {
  const CustomCalcButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Calculate my BMI',
          style: GoogleFonts.aBeeZee(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class CustomContainerChildren {
  Widget maleIcon() {
    return Column(
      children: [
        const Icon(
          MdiIcons.genderMale,
          size: 50,
        ),
        Text(
          'Male',
          style: GoogleFonts.aBeeZee(fontSize: 25, color: Colors.white54),
        )
      ],
    );
  }
}

CustomContainerChildren containerChild = CustomContainerChildren();
