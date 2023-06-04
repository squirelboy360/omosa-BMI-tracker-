import 'package:flutter/material.dart';
import 'package:omosa/classes/widget_classes/screen1/custom_container_children_extension.dart';
import 'package:omosa/presentation/constants/colors/pallete.dart';
import 'package:omosa/presentation/screens/detailed_screen.dart';
import 'package:omosa/presentation/widgets/screen1/custom_calc_button.dart';
import 'package:omosa/presentation/widgets/screen1/custom_containers.dart';
import '../../classes/functions/screen1/calculation.dart';
import '../../classes/functions/screen1/function_class.dart';
import '../../classes/widget_classes/screen1/custom_container_children_widget_class.dart';

enum Gender { male, female }

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

      Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //width: double.infinity,
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/wallpaper.png'),fit: BoxFit.fitWidth)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: CustomContainer(
                          color: selectedGender == Gender.male
                              ? functionClass.activeColorValue
                              : functionClass.inActiveColorValue,
                          child: containerChild.maleIcon()),
                    )),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: CustomContainer(
                          color: selectedGender == Gender.female
                              ? functionClass.activeColorValue
                              : functionClass.inActiveColorValue,
                          child: containerChild.femaleIcon()),
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: CustomContainer(
                        color: functionClass.inActiveColorValue,
                        child:
                            containerChild.heightBoxElements(Slider(
                              activeColor: kDefaultOrangeAlpha,
                                thumbColor: Colors.orange,

                                //divisions: 10.34.toInt(),
                                min: 120.0,
                                max: 320.0,
                                value: functionClass.heightValue.roundToDouble(),
                                onChanged: (double value) {
                                  setState(() {
                                    functionClass.heightValue = value.roundToDouble();
                                  });
                                })))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: CustomContainer(
                      color: functionClass.inActiveColorValue,
                      child: containerChild.weightBoxElements(
                          childrenExtension.weightExtension(() {
                        setState(() {});
                      }, () {
                        setState(() {});
                      })),
                    )),
                Expanded(
                    flex: 1,
                    child: CustomContainer(
                      color: functionClass.inActiveColorValue,
                      child: containerChild
                          .ageBoxElements(childrenExtension.ageExtension(() {
                        setState(() {});
                      }, () {
                        setState(() {});
                      })),
                    )),
              ],

            ),
              Row(
              children: [
                Expanded(child: ElevatedButton(onPressed: () {
                  Calculator calc = Calculator(height: functionClass.heightValue.toInt(), weight: functionClass.weightValue.toInt());
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailedScreen(calculate: calc.calculate(),detail: calc.detail(),result: calc.results(),)));
                },
                   child: const CustomCalcButton(),)
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
