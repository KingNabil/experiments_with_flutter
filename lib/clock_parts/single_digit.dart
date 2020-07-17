import 'package:experiments_with_flutter/clock_parts/single_clock.dart';
import 'package:experiments_with_flutter/constants/digit_enums.dart';
import 'package:experiments_with_flutter/constants/hand_position_enums.dart';
import 'package:flutter/material.dart';

class SingleDigit extends StatelessWidget {
  final Digit digit;
  final Color color, tickColor;
  final double height, tickThickness;

  const SingleDigit(this.digit, {this.color, this.height = 300, this.tickThickness = 12, this.tickColor = Colors.black87});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min, children: [_buildClock(digit.topLeft), _buildClock(digit.topRight)]),
        Row(mainAxisSize: MainAxisSize.min, children: [_buildClock(digit.centerLeft), _buildClock(digit.centerRight)]),
        Row(mainAxisSize: MainAxisSize.min, children: [_buildClock(digit.bottomLeft), _buildClock(digit.bottomRight)]),
      ],
    );
  }

  _buildClock(DoubleHandPosition position) =>
      SingleClock(position, tickColor: tickColor, color: color, radius: height / 3, tickThickness: tickThickness);
}
