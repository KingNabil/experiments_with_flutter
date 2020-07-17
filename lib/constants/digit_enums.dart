import 'package:experiments_with_flutter/constants/hand_position_enums.dart';

enum Digits { zero, one, two, three, four, five, six, seven, eight, nine }

extension DigitExtentions on Digits {
  DoubleHandPosition get topLeft {
    switch (this) {
      case Digits.one:
        return DoubleHandPosition.none;
      case Digits.two:
        return DoubleHandPosition.three;
      case Digits.three:
        return DoubleHandPosition.three;
      case Digits.four:
        return DoubleHandPosition.six;
      case Digits.five:
        return DoubleHandPosition.three_six;
      case Digits.six:
        return DoubleHandPosition.three_six;
      case Digits.seven:
        return DoubleHandPosition.three;
      case Digits.eight:
        return DoubleHandPosition.three_six;
      case Digits.nine:
        return DoubleHandPosition.three_six;
      default:
        return DoubleHandPosition.three_six;
    }
  }

  DoubleHandPosition get topRight {
    switch (this) {
      case Digits.one:
        return DoubleHandPosition.six;
      case Digits.two:
        return DoubleHandPosition.six_nine;
      case Digits.three:
        return DoubleHandPosition.six_nine;
      case Digits.four:
        return DoubleHandPosition.six;
      case Digits.five:
        return DoubleHandPosition.nine;
      case Digits.six:
        return DoubleHandPosition.nine;
      case Digits.seven:
        return DoubleHandPosition.six_nine;
      case Digits.eight:
        return DoubleHandPosition.six_nine;
      case Digits.nine:
        return DoubleHandPosition.six_nine;
      default:
        return DoubleHandPosition.six_nine;
    }
  }

  DoubleHandPosition get centerLeft {
    switch (this) {
      case Digits.one:
        return DoubleHandPosition.none;
      case Digits.two:
        return DoubleHandPosition.three_six;
      case Digits.three:
        return DoubleHandPosition.three;
      case Digits.four:
        return DoubleHandPosition.zero_three;
      case Digits.five:
        return DoubleHandPosition.zero_three;
      case Digits.six:
        return DoubleHandPosition.zero_six;
      case Digits.seven:
        return DoubleHandPosition.none;
      case Digits.eight:
        return DoubleHandPosition.three_six;
      case Digits.nine:
        return DoubleHandPosition.zero_three;
      default:
        return DoubleHandPosition.zero_six;
    }

  }

  DoubleHandPosition get centerRight {
    switch (this) {
      case Digits.one:
        return DoubleHandPosition.zero_six;
      case Digits.two:
        return DoubleHandPosition.zero_nine;
      case Digits.three:
        return DoubleHandPosition.zero_six;
      case Digits.four:
        return DoubleHandPosition.zero_six;
      case Digits.five:
        return DoubleHandPosition.nine_six;
      case Digits.six:
        return DoubleHandPosition.nine_six;
      case Digits.seven:
        return DoubleHandPosition.zero_six;
      case Digits.eight:
        return DoubleHandPosition.zero_nine;
      case Digits.nine:
        return DoubleHandPosition.zero_six;
      default:
        return DoubleHandPosition.zero_six;
    }
  }

  DoubleHandPosition get bottomLeft {
    switch (this) {
      case Digits.one:
        return DoubleHandPosition.none;
      case Digits.two:
        return DoubleHandPosition.zero_three;
      case Digits.three:
        return DoubleHandPosition.three;
      case Digits.four:
        return DoubleHandPosition.none;
      case Digits.five:
        return DoubleHandPosition.three;
      case Digits.six:
        return DoubleHandPosition.zero_three;
      case Digits.seven:
        return DoubleHandPosition.none;
      case Digits.eight:
        return DoubleHandPosition.zero_three;
      case Digits.nine:
        return DoubleHandPosition.three;
      default:
        return DoubleHandPosition.zero_three;
    }
  }

  DoubleHandPosition get bottomRight {
    switch (this) {
      case Digits.one:
        return DoubleHandPosition.zero;
      case Digits.two:
        return DoubleHandPosition.nine;
      case Digits.three:
        return DoubleHandPosition.zero_nine;
      case Digits.four:
        return DoubleHandPosition.zero;
      case Digits.five:
        return DoubleHandPosition.zero_nine;
      case Digits.six:
        return DoubleHandPosition.zero_nine;
      case Digits.seven:
        return DoubleHandPosition.zero;
      case Digits.eight:
        return DoubleHandPosition.zero_nine;
      case Digits.nine:
        return DoubleHandPosition.zero_nine;
      default:
        return DoubleHandPosition.zero_nine;
    }
  }
}
