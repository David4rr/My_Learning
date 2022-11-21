import 'dart:math' as math;
import 'bangun_datar.dart';

class lingkaran extends bangun_datar {
  late double _r;

  void set r(double value) {
    if (value < 0) {
      value *= -1;
    }
    _r = value;
  }

  double get r {
    return _r;
  }

  double get luas => math.pi * _r * _r;
  double get keliling => 2 * math.pi * _r;
}
