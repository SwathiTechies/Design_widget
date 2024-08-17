
import 'dart:math';

import 'package:flutter/material.dart';


class SineCalculator extends StatefulWidget {
  @override
  _SineCalculatorState createState() => _SineCalculatorState();
}

class _SineCalculatorState extends State<SineCalculator> {
  double angleInDegrees = 30;
  double angleInRadians = 30 * (pi / 180);
  double sineValue = sin(30 * (pi / 180));

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sin($angleInDegrees degrees) = $sineValue',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}