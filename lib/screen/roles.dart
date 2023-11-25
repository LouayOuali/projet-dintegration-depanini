import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:depanini/design/colors.dart';
import 'package:depanini/screen/sign_up_emplois.dart';
import 'package:depanini/screen/sign_up_service.dart';

class Roles extends StatelessWidget {
  const Roles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Get.to(SignUpDE());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 5),
                    borderRadius: BorderRadius.circular(68),
                    color: secondaryColor,
                  ),
                  height: 250,
                  width: 290,
                  child: Image.asset(
                    "assets/work2.png",
                    height: 168,
                    width: 168,
                    fit: BoxFit.scaleDown,
                  )),
            ),
          ),
          Text(
            "Job seeker",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            child: Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20)),
          ),
          GestureDetector(
            onTap: () {
              Get.to(SignUpDS());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 5),
                    borderRadius: BorderRadius.circular(68),
                    color: secondaryColor,
                  ),
                  height: 250,
                  width: 290,
                  child: Image.asset(
                    "assets/resume2.png",
                    height: 168,
                    width: 168,
                    fit: BoxFit.scaleDown,
                  )),
            ),
          ),
          Text(
            "Service requester",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            child: Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
          ),
        ],
      ),
    );
  }
}
