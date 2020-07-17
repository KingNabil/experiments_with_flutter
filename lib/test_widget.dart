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
  Digits digit = Digits.zero;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          digit = digit == Digits.nine ? Digits.zero : Digits.values[digit.index + 1];
          print(digit);
        });
      },
      child: Container(
        child: SingleDigit(digit),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.blue, width: 2),
        ),
      ),
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          dhp = dhp == DoubleHandPosition.nine_six ? DoubleHandPosition.none : DoubleHandPosition.values[dhp.index + 1];
        });
      },
      child: SingleClock(dhp),
    );
  }
}
