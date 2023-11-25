import 'package:flutter/material.dart';
import 'package:depanini/screen/home_page.dart';
import 'package:depanini/screen/nav_bar.dart';
import 'package:depanini/screen/profile.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;
  // List<Widget> body = const [
  //   HomePage(),
  //   Profile(),
  // ];
  List<Widget> body = const [
    HomePage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Depanini",
            style: TextStyle(color: Colors.black),
          ),
        ),
        // backgroundColor: Color.fromRGBO(248, 187, 34, 1),
        backgroundColor: const Color.fromARGB(255, 188, 116, 201),

        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //       bottomLeft: Radius.circular(50),
        //       bottomRight: Radius.circular(50)),
        // ),
        toolbarHeight: 60,
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
