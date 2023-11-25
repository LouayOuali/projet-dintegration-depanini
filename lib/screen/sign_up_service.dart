import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:depanini/design/colors.dart';
import 'package:depanini/screen/main_app.dart';

class SignUpDS extends StatefulWidget {
  const SignUpDS({super.key});

  @override
  State<SignUpDS> createState() => _SignUpDSState();
}

List<String> gender = ["Male", "Female"];

class _SignUpDSState extends State<SignUpDS> {
  String currentGender = gender[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: Center(
                child: Column(
                  children: [
                    Text("Please fill the form",
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w400,
                            fontSize: 35,
                            decorationThickness: 1)),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "First Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Last Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "E-Mail",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: RadioListTile(
                        title: Text("Male"),
                        value: gender[0],
                        groupValue: currentGender,
                        onChanged: (value) {
                          setState(() {
                            currentGender = value.toString();
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: RadioListTile(
                        title: Text("Female"),
                        value: gender[1],
                        groupValue: currentGender,
                        onChanged: (value) {
                          setState(() {
                            currentGender = value.toString();
                          });
                        },
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(MainApp());
                      },
                      child: Text("Confirm"),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(buttonColors),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(fontSize: 24, fontFamily: "Mandali"),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.fromLTRB(40, 15, 40, 15),
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
