import 'package:experiments_with_flutter/clock_parts/clock_by_clock.dart';
import 'package:experiments_with_flutter/test_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: PageView(
        controller: PageController(),
        children: <Widget>[
          Container(alignment: Alignment.center, child: TestSingleClock()),
          Container(alignment: Alignment.center, child: TestDigit()),
          Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[TestDigit(), TestDigit(), TestDigit()],
              )),
          Container(alignment: Alignment.center, child: ClockByClock()),
        ],
      ),
    );
  }
}
