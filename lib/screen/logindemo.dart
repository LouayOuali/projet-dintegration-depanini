import 'package:flutter/material.dart';
import 'package:depanini/design/colors.dart';

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

  @override
  State<LoginDemo> createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/backgroundImage.jpg"),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(20),
                      child: Column(children: [
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                        Container(
                          color: Colors.amber,
                          height: 50,
                          width: 300,
                        ),
                      ]),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
