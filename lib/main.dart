import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:omosa/presentation/colors/pallete.dart';
import 'package:omosa/presentation/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
                shadowColor: Colors.transparent,
                elevation: 0,
                shape:
                    const StadiumBorder(side: BorderSide(color: Colors.white)),
                backgroundColor: defaultBlue)),
        primaryColor: CupertinoColors.activeBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
