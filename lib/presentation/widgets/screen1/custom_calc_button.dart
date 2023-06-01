import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
