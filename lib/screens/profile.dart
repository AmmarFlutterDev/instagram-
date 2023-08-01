// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/statusavataruploader.dart';
import 'package:instagram_clone/widgets/textbutton.dart';

import '../widgets/tabbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text("Myprofile"),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.list))
        ],
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/2.png"),
                      ),
                      Text(
                        "Jaswal",
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                    height: 25,
                  ),
                  Column(
                    children: [
                      Text("3"),
                      Text(
                        "Posts",
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                    height: 18,
                  ),
                  Column(
                    children: [
                      Text("55"),
                      Text(
                        "Followers",
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                    height: 18,
                  ),
                  Column(
                    children: [
                      Text(
                        "35",
                      ),
                      Text(
                        "Following",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Customtextbuttom(
                    custombutton: "Edit profile",
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Customtextbuttom(custombutton: "Share profile"),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 37, 37, 37),
                        borderRadius: BorderRadius.circular(4)),
                    height: 25,
                    width: 30,
                    child: Center(
                      child: Icon(
                        Icons.person_add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 3,
                ),
                Statusavatarwidget(
                    statusuploadimage: "assets/0.png",
                    statusuploadname: "Highight"),
                Statusavatarwidget(
                    statusuploadimage: "assets/4.png", statusuploadname: "New")
              ],
            ),
            Tabbar(
              isclicked: true,
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
