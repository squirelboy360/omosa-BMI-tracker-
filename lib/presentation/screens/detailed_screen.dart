import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/cupertino.dart';
import 'package:omosa/presentation/constants/colors/pallete.dart';
import 'package:omosa/presentation/constants/widgets/widgets.dart';
import 'package:omosa/presentation/widgets/screen1/custom_containers.dart';
import 'package:omosa/presentation/widgets/screen2/re_calc_button.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({super.key, required this.result, required this.calculate, required this.detail});
  final String calculate;
  final String result;
  final String detail;

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kDefaultOrangeAlpha,
        appBar: AppBar(
          backgroundColor: kDefaultOrangeAlpha,
          elevation: 0,
        ),
        //backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Your Result',
                style: kHeadStyle,
              ),
            ),
            Expanded(
                flex: 3,
                child: CustomContainer(
                  color: kDefaultBlueAlpha,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.result.toUpperCase(),
                          style: GoogleFonts.alata(
                              color: Colors.lightGreenAccent,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        ),
                        Text(
                          widget.calculate,
                          style: kResultTextStyle,
                        ),
                         Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            widget.detail,
                            style: const TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ReCalcButton(onTap: (){
                            Navigator.pop(context);
                          })
                        )
                      ],
                    ),
                  ),
                ))
          ],
        )
        //),
        );
  }
}
