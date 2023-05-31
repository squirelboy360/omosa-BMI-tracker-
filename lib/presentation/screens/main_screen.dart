import 'package:flutter/material.dart';
import 'package:omosa/presentation/widgets/custom_containers.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
                      child: CustomContainer(child: containerChild.maleIcon())),
                  Expanded(
                      flex: 1,
                      child: CustomContainer(
                        child: containerChild.maleIcon(),
                      )),
                ],
              ),
              CustomContainer(child: containerChild.maleIcon()),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CustomContainer(
                        child: containerChild.maleIcon(),
                      )),
                  Expanded(
                      flex: 1,
                      child: CustomContainer(
                        child: containerChild.maleIcon(),
                      )),
                ],
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
