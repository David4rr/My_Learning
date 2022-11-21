import 'dart:io';

import 'lingkaran.dart';
import 'bangun_datar.dart';
import 'persegi.dart';
import 'segitiga.dart';

void main(List<String> args) {
  lingkaran l1 = new lingkaran();
  bangun_datar b = new bangun_datar();

  l1.r = 14;
  b.luas = l1.luas;
  b.keliling = l1.keliling;

  print("Luas Lingkaran adalah : ");
  print(b.luas);
  print("Sedangkan kelilingnya adalah : ");
  print(b.keliling);

  persegi p1 = new persegi();
  bangun_datar b2 = new bangun_datar();
  p1.sisi = 20;
  b2.luas = p1.luas;
  b2.keliling = p1.keliling;

  print("Luas persegi adalah : ");
  print(b2.luas);
  print("Sedangkan kelilingnya adalah : ");
  print(b2.keliling);

  segitiga s1 = new segitiga();
  bangun_datar b3 = new bangun_datar();
  s1.alas = 20;
  s1.tinggi = 30;
  s1.a = 10;
  s1.b = 10;

  b3.luas = s1.luas;
  b3.keliling = s1.keliling;

  print("Luas segitiga adalah : ");
  print(b3.luas);
  print("Sedangkan kelilingnya adalah : ");
  print(b3.keliling);
}
