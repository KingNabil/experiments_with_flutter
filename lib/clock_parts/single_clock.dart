import 'package:experiments_with_flutter/clock_parts/clock_hand.dart';
import 'package:experiments_with_flutter/constants/hand_position_enums.dart';
import 'package:flutter/material.dart';

class SingleClock extends StatefulWidget {
  final double radius;
  final DoubleHandPosition time;

  SingleClock(this.time, {this.radius = 100});

  @override
  _SingleClockState createState() => _SingleClockState();
}

class _SingleClockState extends State<SingleClock> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          width: widget.radius,
          height: widget.radius,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
//              border: Border.all(color: Colors.blue, width: 3),
              color: Colors.white.withOpacity(.1),
          ),
        ),
        ClockHand(radius: widget.radius, handPosition: widget.time.hp1),
        ClockHand(radius: widget.radius, handPosition: widget.time.hp2),
      ],
    );
  }
}