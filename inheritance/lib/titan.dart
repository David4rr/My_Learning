class titan {
  late int _powerPoint;
  void setPowerPoint(int value) {
    if (value <= 5) {
      value = 5;
    }
    _powerPoint = value;
  }

  int getPowerPoint() => _powerPoint;
}
