class lingkaran {
  late double phi;
  late double r;
  void setPhi(double value) {
    if (value < 0) {
      value *= -1;
    }
    phi = value;
  }

  double getPhi() {
    return phi;
  }

  void setR(double value) {
    if (value < 0) {
      value *= -1;
    }
    r = value;
  }

  double getR() {
    return r;
  }

  double hitungLuas() {
    return this.phi * r * r;
  }
}
