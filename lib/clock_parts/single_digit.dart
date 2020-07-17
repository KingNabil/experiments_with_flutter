import 'package:experiments_with_flutter/clock_parts/single_clock.dart';
import 'package:experiments_with_flutter/constants/digit_enums.dart';
import 'package:flutter/material.dart';

class SingleDigit extends StatelessWidget {
  final Digit digit;
  final Color color, tickColor;

  const SingleDigit(this.digit, {this.color, this.tickColor = Colors.black87});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          SingleClock(digit.topLeft, tickColor: tickColor, color: color),
          SingleClock(digit.topRight, tickColor: tickColor, color: color),
        ]),
        Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          SingleClock(digit.centerLeft, tickColor: tickColor, color: color),
          SingleClock(digit.centerRight, tickColor: tickColor, color: color),
        ]),
        Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          SingleClock(digit.bottomLeft, tickColor: tickColor, color: color),
          SingleClock(digit.bottomRight, tickColor: tickColor, color: color),
        ]),
      ],
    );
  }
}
