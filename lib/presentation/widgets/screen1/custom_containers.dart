import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.child, required this.color});
  final Widget child;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: color),
        child: child,
      ),
    );
  }
}
