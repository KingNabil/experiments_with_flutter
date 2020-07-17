import 'package:experiments_with_flutter/clock_parts/clock_hand.dart';
import 'package:experiments_with_flutter/constants/hand_position_enums.dart';
import 'package:flutter/material.dart';

class SingleClock extends StatelessWidget {
  final Color color, tickColor;
  final DoubleHandPosition time;
  final double radius, spacing, tickMargin, tickThickness;

  const SingleClock(this.time,
      {@required this.radius, this.spacing = 4, this.tickMargin = 4, this.tickThickness = 10, this.color, this.tickColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: radius,
      height: radius,
      margin: EdgeInsets.all(spacing),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? Colors.grey[300],
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.5), offset: Offset(2, 2), blurRadius: 7, spreadRadius: .5),
          BoxShadow(color: Colors.white.withOpacity(.90), offset: Offset(-2, -2), blurRadius: 7, spreadRadius: .5),
        ],
      ),
      child: Container(
        margin: EdgeInsets.all(tickMargin),
        alignment: Alignment.topCenter,
        child: Stack(
          children: <Widget>[
            ClockHand(length: radius - tickMargin - spacing, handPosition: time.hp1, color: tickColor, thickness: tickThickness),
            ClockHand(length: radius - tickMargin - spacing, handPosition: time.hp2, color: tickColor, thickness: tickThickness),
          ],
        ),
      ),
    );
  }
}
