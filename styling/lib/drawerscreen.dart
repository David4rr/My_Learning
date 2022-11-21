import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("David Arrozaqi"),
          currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/img/ayanokounjing.jpg")),
          accountEmail: Text("davidarrozaqi085@gmail.com"),
        ),
        DrawerListTile(
          iconData: Icons.group,
          title: "NewGroup",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.lock,
          title: "New Secret Group",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.notifications,
          title: "New Chanel Chat",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.contacts,
          title: "Contacts",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.bookmark_border,
          title: "Saved Message",
          onTilePressed: () {},
        ),
        DrawerListTile(
          iconData: Icons.phone,
          title: "Calls",
          onTilePressed: () {},
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
    ));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onTilePressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

removeDataSharedPreds(String values) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove(values);
}
