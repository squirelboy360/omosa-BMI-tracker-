import 'package:flutter/material.dart';
import 'package:omosa/classes/functions/screen1/function_class.dart';
import 'package:pixelarticons/pixelarticons.dart';

class _ContainerChildrenExtension {
  Widget weightExtension(Function onPressed1, Function onPressed2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            heroTag: '0',
            elevation: 0,
            splashColor: Colors.transparent,
            tooltip: 'add weight',
            onPressed: () {
              functionClass.weightIncrement();
              onPressed2();
            },
            child: const Icon(Pixel.addrow),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            heroTag: '1',
            elevation: 0,
            splashColor: Colors.transparent,
            tooltip: 'subtract weight',
            onPressed: () {
              functionClass.weightDecrement();
              onPressed1();
            },
            child: const Icon(Pixel.minus),
          ),
        )
      ],
    );
  }

  Widget ageExtension(Function onPressed1, Function onPressed2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            heroTag: '2',
            elevation: 0,
            splashColor: Colors.transparent,
            tooltip: 'add weight',
            onPressed: () {
              functionClass.ageIncrement();
              onPressed2();
            },
            child: const Icon(Icons.add),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            heroTag: '3',
            elevation: 0,
            splashColor: Colors.transparent,
            tooltip: 'subtract weight',
            onPressed: () {
              functionClass.ageDecrement();
              onPressed1();
            },
            child: const Icon(Pixel.minus),
          ),
        )
      ],
    );
  }
}

_ContainerChildrenExtension childrenExtension = _ContainerChildrenExtension();
