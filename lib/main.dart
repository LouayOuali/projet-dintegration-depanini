import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:depanini/screen/login.dart';
// import 'package:depanini/screen/logindemo.dart';
// import 'package:depanini/screen/main_app.dart';
// import 'package:depanini/screen/profile.dart';
// import 'package:depanini/screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
