import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors/pallete.dart';

class ReCalcButton extends StatelessWidget {
  const ReCalcButton({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: kDefaultOrangeAlpha),
              backgroundColor: Colors.white70,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: onTap,
          child: Text(
            'Re-Calculate',
            style: GoogleFonts.alata(fontSize: 30, color: Colors.black45),
          ),
        ));
  }
}
