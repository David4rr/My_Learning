import 'lingkaran.dart';

void main(List<String> args) {
  lingkaran lingkar;
  double luasLingkaran;

  lingkar = new lingkaran();
  lingkar.setPhi(3.14);
  lingkar.setR(6.0);

  luasLingkaran = lingkar.hitungLuas();
  print(luasLingkaran);
}
