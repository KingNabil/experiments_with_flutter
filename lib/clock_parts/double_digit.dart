import 'package:experiments_with_flutter/clock_parts/single_digit.dart';
import 'package:experiments_with_flutter/constants/digit_enums.dart';
import 'package:flutter/material.dart';

class DoubleDigit extends StatelessWidget {
  final int number;

  const DoubleDigit(this.number);

  @override
  Widget build(BuildContext context) {
    Digit d1, d2;

    if (number.toString().length == 1) {
      d1 = Digit.zero;
      d2 = Digit.values[number];
    } else {
      d1 = Digit.values[int.parse(number.toString()[0])];
      d2 = Digit.values[int.parse(number.toString()[1])];
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[SingleDigit(d1), SingleDigit(d2)],
    );
  }
}
