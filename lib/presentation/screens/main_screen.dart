import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:omosa/classes/widget_classes/screen1/custom_container_children_extension.dart';
import 'package:omosa/presentation/widgets/screen1/custom_calc_button.dart';
import 'package:omosa/presentation/widgets/screen1/custom_containers.dart';
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
      body: Stack(
        children: [
          Image.asset('assets/wallpaper.png'),
          Column(
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
                              containerChild.heightBoxElements(CupertinoSlider(
                                  divisions: 10.34.toInt(),
                                  min: 10.00,
                                  max: 300.00,
                                  value: functionClass.heightValue.toDouble(),
                                  onChanged: (value) {
                                    setState(() {
                                      functionClass.heightValue = value;
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
                ////////////////
              ),
              const Row(
                children: [
                  Expanded(child: CustomCalcButton()),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
