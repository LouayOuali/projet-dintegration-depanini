import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:depanini/design/colors.dart';
import 'package:depanini/screen/main_app.dart';

class PostuleCV extends StatelessWidget {
  const PostuleCV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Upload your cv : ",
              style: TextStyle(fontSize: 25),
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: () {},
              child: Text(
                'Pick and open file',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => MainApp());
              },
              child: Text("Finish"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttonColors),
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
    );
  }
}
