import 'dart:math';

enum SingleHandPosition { none, zero, three, six, nine }
enum DoubleHandPosition {
  none,
  zero,
  zero_three,
  zero_six,
  zero_nine,
  three,
  three_zero,
  three_six,
  three_nine,
  six,
  six_zero,
  six_three,
  six_nine,
  nine,
  nine_zero,
  nine_three,
  nine_six
}

extension SingleHandPositionExtension on SingleHandPosition {
  int get degree {
    switch (this) {
      case SingleHandPosition.zero:
        return 0;
      case SingleHandPosition.three:
        return 90;
      case SingleHandPosition.six:
        return 180;
      case SingleHandPosition.nine:
        return 270;
      default:
        return 225;
    }
  }

  double get angleValue => this.degree.angleValue;
}

extension DoubleHandPositionExtension on DoubleHandPosition {
  SingleHandPosition get hp1 {
    String str = this.toString().split('.')[1];
    String hp1Str = str.contains('_') ? str.split('_')[0] : str;
//    print(str + ' - ' + hp1Str);
    return SingleHandPosition.values.firstWhere((e) => e.toString().split('.')[1] == hp1Str);
  }

  SingleHandPosition get hp2 {
    String str = this.toString().split('.')[1];
    String hp2Str = str.contains('_') ? str.split('_')[1] : str;
    return SingleHandPosition.values.firstWhere((element) => element.toString().split('.')[1] == hp2Str);
  }
}

extension AngleConverterExtention on int {
  double get angleValue => pi / 180 * this;
}
