import 'package:experiments_with_flutter/clock_parts/single_clock.dart';
import 'package:experiments_with_flutter/clock_parts/single_digit.dart';
import 'package:experiments_with_flutter/constants/digit_enums.dart';
import 'package:experiments_with_flutter/constants/hand_position_enums.dart';
import 'package:flutter/material.dart';

// SingleDigit
class TestDigit extends StatefulWidget {
  @override
  _TestDigitState createState() => _TestDigitState();
}

class _TestDigitState extends State<TestDigit> {
  Digit digit = Digit.zero;

  _update() => setState(() {
        digit = digit == Digit.nine ? Digit.zero : Digit.values[digit.index + 1];
        print(digit);
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _update,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: SingleDigit(digit, tickColor: Colors.black54),
    );
  }
}

// SingleClock
class TestSingleClock extends StatefulWidget {
  @override
  _TestSingleClockState createState() => _TestSingleClockState();
}

class _TestSingleClockState extends State<TestSingleClock> {
  DoubleHandPosition dhp = DoubleHandPosition.none;

  _update() => setState(() {
        dhp = dhp == DoubleHandPosition.nine_six ? DoubleHandPosition.none : DoubleHandPosition.values[dhp.index + 1];
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: SingleClock(dhp),
      onTap: _update,
    );
  }
}
