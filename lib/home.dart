import 'package:experiments_with_flutter/clock_parts/clock_by_clock.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue.shade300,
      body: Container(
        alignment: Alignment.center,
        child: ClockByClock(),
      ),
    );
  }
}
