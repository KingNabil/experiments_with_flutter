import 'package:experiments_with_flutter/constants/hand_position_enums.dart';

enum Digit { zero, one, two, three, four, five, six, seven, eight, nine }

extension DigitExtentions on Digit {
  DoubleHandPosition get topLeft {
    switch (this) {
      case Digit.zero:
        return DoubleHandPosition.three_six;
      case Digit.one:
        return DoubleHandPosition.none;
      case Digit.two:
        return DoubleHandPosition.three;
      case Digit.three:
        return DoubleHandPosition.three;
      case Digit.four:
        return DoubleHandPosition.six;
      case Digit.five:
        return DoubleHandPosition.three_six;
      case Digit.six:
        return DoubleHandPosition.three_six;
      case Digit.seven:
        return DoubleHandPosition.three;
      case Digit.eight:
        return DoubleHandPosition.three_six;
      case Digit.nine:
        return DoubleHandPosition.three_six;
      default:
        return DoubleHandPosition.none;
    }
  }

  DoubleHandPosition get topRight {
    switch (this) {
      case Digit.zero:
        return DoubleHandPosition.six_nine;
      case Digit.one:
        return DoubleHandPosition.six;
      case Digit.two:
        return DoubleHandPosition.six_nine;
      case Digit.three:
        return DoubleHandPosition.six_nine;
      case Digit.four:
        return DoubleHandPosition.six;
      case Digit.five:
        return DoubleHandPosition.nine;
      case Digit.six:
        return DoubleHandPosition.nine;
      case Digit.seven:
        return DoubleHandPosition.six_nine;
      case Digit.eight:
        return DoubleHandPosition.six_nine;
      case Digit.nine:
        return DoubleHandPosition.six_nine;
      default:
        return DoubleHandPosition.none;
    }
  }

  DoubleHandPosition get centerLeft {
    switch (this) {
      case Digit.zero:
        return DoubleHandPosition.zero_six;
      case Digit.one:
        return DoubleHandPosition.none;
      case Digit.two:
        return DoubleHandPosition.three_six;
      case Digit.three:
        return DoubleHandPosition.three;
      case Digit.four:
        return DoubleHandPosition.zero_three;
      case Digit.five:
        return DoubleHandPosition.zero_three;
      case Digit.six:
        return DoubleHandPosition.zero_six;
      case Digit.seven:
        return DoubleHandPosition.none;
      case Digit.eight:
        return DoubleHandPosition.zero_three;
      case Digit.nine:
        return DoubleHandPosition.zero_three;
      default:
        return DoubleHandPosition.none;
    }
  }

  DoubleHandPosition get centerRight {
    switch (this) {
      case Digit.zero:
        return DoubleHandPosition.zero_six;
      case Digit.one:
        return DoubleHandPosition.zero_six;
      case Digit.two:
        return DoubleHandPosition.zero_nine;
      case Digit.three:
        return DoubleHandPosition.zero_nine;
      case Digit.four:
        return DoubleHandPosition.zero_six;
      case Digit.five:
        return DoubleHandPosition.nine_six;
      case Digit.six:
        return DoubleHandPosition.nine_six;
      case Digit.seven:
        return DoubleHandPosition.zero_six;
      case Digit.eight:
        return DoubleHandPosition.zero_nine;
      case Digit.nine:
        return DoubleHandPosition.zero_six;
      default:
        return DoubleHandPosition.none;
    }
  }

  DoubleHandPosition get bottomLeft {
    switch (this) {
      case Digit.zero:
        return DoubleHandPosition.zero_three;
      case Digit.one:
        return DoubleHandPosition.none;
      case Digit.two:
        return DoubleHandPosition.zero_three;
      case Digit.three:
        return DoubleHandPosition.three;
      case Digit.four:
        return DoubleHandPosition.none;
      case Digit.five:
        return DoubleHandPosition.three;
      case Digit.six:
        return DoubleHandPosition.zero_three;
      case Digit.seven:
        return DoubleHandPosition.none;
      case Digit.eight:
        return DoubleHandPosition.zero_three;
      case Digit.nine:
        return DoubleHandPosition.three;
      default:
        return DoubleHandPosition.none;
    }
  }

  DoubleHandPosition get bottomRight {
    switch (this) {
      case Digit.zero:
        return DoubleHandPosition.zero_nine;
      case Digit.one:
        return DoubleHandPosition.zero;
      case Digit.two:
        return DoubleHandPosition.nine;
      case Digit.three:
        return DoubleHandPosition.zero_nine;
      case Digit.four:
        return DoubleHandPosition.zero;
      case Digit.five:
        return DoubleHandPosition.zero_nine;
      case Digit.six:
        return DoubleHandPosition.zero_nine;
      case Digit.seven:
        return DoubleHandPosition.zero;
      case Digit.eight:
        return DoubleHandPosition.zero_nine;
      case Digit.nine:
        return DoubleHandPosition.zero_nine;
      default:
        return DoubleHandPosition.none;
    }
  }
}
