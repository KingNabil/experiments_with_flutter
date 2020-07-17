import 'package:experiments_with_flutter/constants/hand_position_enums.dart';
import 'package:flutter/material.dart';

class ClockHand extends StatefulWidget {
  final Color color;
  final double radius, thickness;
  final SingleHandPosition handPosition;

  ClockHand({this.radius = 100, this.thickness = 6, this.handPosition = SingleHandPosition.zero, this.color = Colors.black});

  @override
  _ClockHandState createState() => _ClockHandState();
}

class _ClockHandState extends State<ClockHand> {
  @override
  Widget build(BuildContext context) {
    var clockHandDecoration = BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(widget.thickness / 2)), color: widget.color);
    return TweenAnimationBuilder(
      curve: Curves.easeInOut,
      tween: Tween<double>(begin: 0, end: widget.handPosition.angleValue),
      duration: Duration(milliseconds: 1000),
      builder: (BuildContext context, value, Widget child) => Transform.rotate(
        alignment: Alignment.bottomCenter,
        angle: value,
        child: child,
      ),
      child: Container(width: widget.thickness, height: widget.radius / 2, decoration: clockHandDecoration),
    );
  }
}
