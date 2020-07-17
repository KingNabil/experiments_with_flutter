import 'package:experiments_with_flutter/constants/hand_position_enums.dart';
import 'package:flutter/material.dart';

class ClockHand extends StatefulWidget {
  final double radius;
  final SingleHandPosition handPosition;

  ClockHand({this.radius = 100, this.handPosition = SingleHandPosition.zero});

  @override
  _ClockHandState createState() => _ClockHandState();
}

class _ClockHandState extends State<ClockHand> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.easeInOut,
      tween: Tween<double>(begin: 0, end: widget.handPosition.angleValue),
      duration: Duration(milliseconds: 1000),
      builder: (BuildContext context, value, Widget child) => Transform.rotate(
        alignment: Alignment.bottomCenter,
        angle: value,
        child: child,
      ),
      child: AnimatedOpacity(
        opacity: widget.handPosition == SingleHandPosition.none ? 0 : 1,
        duration: Duration(milliseconds: 1000),
        child: Container(
          width: 10,
          height: widget.radius / 2,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.white),
        ),
      ),
    );
  }
}
