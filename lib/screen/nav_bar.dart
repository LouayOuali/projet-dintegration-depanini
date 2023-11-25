import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:depanini/main.dart';
import 'package:depanini/screen/login.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 190, 130, 201)),
            accountName: Text("name example"),
            accountEmail: Text("example@gmail.com"),
            currentAccountPicture: CircleAvatar(
              foregroundImage: AssetImage("assets/profile.jpg"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text("Feedback"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.report),
            title: Text("Report a problem"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
            onTap: () {
              Get.to(Login());
            },
          ),
        ],
      ),
    );
  }
}
