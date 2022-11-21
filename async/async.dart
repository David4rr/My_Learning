import 'dart:async';

Future<void> main(List<String> args) async {
  var a = Human();

  print("Luffy");
  print("Zoro");
  print("Killer");
  a.getData();
  print(a.name);
}

class Human {
  String name = "nama character one piaece";
  void getData() {
    name = "Hilmy";
    print("get data [done]");
  }
}

Future<String> delay(String names) async {
  await fetchUserOrder();
  return names;
}

Future<String> fetchUserOrder() => Future.delayed(
      Duration(seconds: 3),
      () => '',
    );
