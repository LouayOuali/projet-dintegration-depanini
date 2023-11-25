import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:depanini/design/colors.dart';
// import 'package:depanini/screen/home_page.dart';
import 'package:depanini/screen/main_app.dart';
import 'package:depanini/screen/roles.dart';
import 'package:depanini/screen/sign_in.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/backgroundImage.jpg"),
              fit: BoxFit.cover,
              opacity: 95),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 255, 255, 255)),
                margin: const EdgeInsets.fromLTRB(20, 90, 20, 90),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(137, 255, 255, 255)),
                      margin: const EdgeInsets.fromLTRB(20, 50, 20, 90),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
                      child: Center(
                        child: Column(children: [
                          Image.asset(
                            "assets/logo.png",
                            width: 200,
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: textFieldColor,
                                filled: true,
                                hintText: "Username",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: textFieldColor,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            "Forgot password?",
                            textAlign: TextAlign.right,
                          ),
                          const SizedBox(
                            child: Padding(padding: EdgeInsets.all(20)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                child: IconButton(
                                    color: Color.fromARGB(255, 215, 90, 81),
                                    onPressed: () {
                                      Get.to(SignIn());
                                    },
                                    icon: Icon(MdiIcons.google)),
                              ),
                              GestureDetector(
                                child: IconButton(
                                    color: Colors.blue,
                                    onPressed: () {
                                      Get.to(SignIn());
                                    },
                                    icon: Icon(MdiIcons.facebook)),
                              ),
                              GestureDetector(
                                child: IconButton(
                                    color:
                                        const Color.fromARGB(255, 19, 97, 160),
                                    onPressed: () {
                                      Get.to(SignIn());
                                    },
                                    icon: Icon(MdiIcons.linkedin)),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.to(() => MainApp());
                            },
                            child: Text("Login"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(buttonColors),
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                TextStyle(fontSize: 24, fontFamily: "Mandali"),
                              ),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.fromLTRB(40, 15, 40, 15),
                              ),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("You don't hava an account?"),
                              TextButton(
                                onPressed: () {
                                  Get.to(Roles());
                                },
                                child: Text("Sign up here !"),
                              )
                            ],
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // child: Container(
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(50),
      //       color: const Color.fromARGB(137, 255, 255, 255)),
      //   margin: const EdgeInsets.fromLTRB(20, 90, 20, 90),
      // )
    );
  }
}
