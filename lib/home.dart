import 'package:experiments_with_flutter/test_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        alignment: Alignment.center,
        child: TestDigit(),
//        child: ClockByClock(),
      ),
    );
  }
}
