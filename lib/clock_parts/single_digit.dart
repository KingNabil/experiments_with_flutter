import 'package:experiments_with_flutter/constants/digit_enums.dart';
import 'package:experiments_with_flutter/clock_parts/single_clock.dart';
import 'package:flutter/material.dart';

class SingleDigit extends StatelessWidget {
  final Digits d;

  const SingleDigit(this.d);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min, children: <Widget>[SingleClock(d.topLeft), SingleClock(d.topRight)]),
        Row(mainAxisSize: MainAxisSize.min, children: <Widget>[SingleClock(d.centerLeft), SingleClock(d.centerRight)]),
        Row(mainAxisSize: MainAxisSize.min, children: <Widget>[SingleClock(d.bottomLeft), SingleClock(d.bottomRight)]),
      ],
    );
  }
}
