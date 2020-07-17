import 'dart:async';

import 'package:experiments_with_flutter/clock_parts/double_digit.dart';
import 'package:flutter/material.dart';

class ClockByClock extends StatefulWidget {
  @override
  _ClockByClockState createState() => _ClockByClockState();
}

class _ClockByClockState extends State<ClockByClock> {
  Timer _timer;

  int t1 = 0, t2 = 0;

  void startTimer() {
    _timer = new Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      setState(() {
        t2++;
        t1 = t2 % 2 == 0 ? t1 + 1 : t1;
        print('$t1:$t2');
      });
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(child: Row(children: <Widget>[DoubleDigit(t1), DoubleDigit(t2)])),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        border: Border.all(color: Colors.white, width: 5),
      ),
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(30),
    );
  }
}
