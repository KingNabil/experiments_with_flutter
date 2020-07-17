import 'package:experiments_with_flutter/clock_parts/clock_hand.dart';
import 'package:experiments_with_flutter/constants/hand_position_enums.dart';
import 'package:flutter/material.dart';

class SingleClock extends StatelessWidget {
  final Color color, tickColor;
  final double radius, spacing;
  final DoubleHandPosition time;

  const SingleClock(this.time, {this.radius = 100, this.spacing = 4, this.color, this.tickColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: radius + spacing,
      height: radius + spacing,
      margin: EdgeInsets.all(spacing),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? Colors.grey[300],
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.5), offset: Offset(2, 2), blurRadius: 7, spreadRadius: .5),
          BoxShadow(color: Colors.white.withOpacity(.90), offset: Offset(-2, -2), blurRadius: 7, spreadRadius: .5),
        ],
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Stack(
          children: <Widget>[
            ClockHand(radius: radius + spacing, handPosition: time.hp1, color: tickColor),
            ClockHand(radius: radius + spacing, handPosition: time.hp2, color: tickColor),
          ],
        ),
      ),
    );
  }
}
