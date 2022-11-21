import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'mwehe';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'David arrozaqi',
            ),
            ElevatedButton(onPressed: () async {}, child: const Text("waw"))
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("waw"),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      child: const Icon(Icons.logout)),
                  const Text("Logout")
                ],
              ),
              onTap: () async {
                removeDataSharedPreds("Username");
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
            ),
          ],
        ),
      ),
    );
  }

  getDataSharedPrefs() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String data = preferences.getString('Username').toString();
    return data;
  }

  removeDataSharedPreds(String values) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(values);
  }
}
