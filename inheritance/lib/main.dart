import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(List<String> args) {
  armor_titan armor = armor_titan();
  attack_titan attack = attack_titan();
  beast_titan beast = beast_titan();
  human h = human();
  armor.setPowerPoint(18);
  attack.setPowerPoint(20);
  beast.setPowerPoint(30);
  h.setPowerPoint(100);

  print("Aksi Dari Armor Titan : " + armor.terjang());
  print("Power Point Armor Titan : ${armor.getPowerPoint()}");
  print("Aksi Dari Attack Titan : " + attack.punch());
  print("Power Dari Attack Titan : ${attack.getPowerPoint()}");
  print("Aksi Dari Beast Titan : " + beast.lempar());
  print("Power Point Dari Beast Titan : ${beast.getPowerPoint()}");
  print("Aksi Dari Human : " + h.killAllTitan());
  print("Power Point Dari Human  : ${h.getPowerPoint()}");
  print("\nSHINZO SASAAAAAAAAGEYOOOOOOO");
}
