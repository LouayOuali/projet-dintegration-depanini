import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: CircleAvatar(
                        radius: 75,
                        foregroundImage: AssetImage("assets/profile.jpg")),
                  ),
                  Text(
                    "Example Name",
                    style: TextStyle(fontSize: 24),
                  ),
                  TextButton(
                      onPressed: null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Edit profile",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.edit),
                        ],
                      ))
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(119, 255, 179, 0)),
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
