// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/conversation.dart';
import 'package:instagram_clone/screens/login_screen.dart';
import 'package:instagram_clone/widgets/picture_post_widget.dart';
import 'package:instagram_clone/widgets/statusavataruploader.dart';
// import 'package:instagram_clone/widgets/video.dart';
import 'package:instagram_clone/widgets/your_story.dart';

class Homescreens extends StatelessWidget {
  const Homescreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
            icon: Icon(Icons.logout),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConversationScreen(),
                  ));
            },
            icon: Icon(Icons.message),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Yourstory(),
                  Statusavatarwidget(
                    statusuploadimage: "assets/0.png",
                    statusuploadname: "Your story",
                  ),
                  Statusavatarwidget(
                    statusuploadimage: "assets/2.png",
                    statusuploadname: "jaswal",
                  ),
                  Statusavatarwidget(
                    statusuploadimage: "assets/0.png",
                    statusuploadname: "jaswal",
                  ),
                  Statusavatarwidget(
                    statusuploadimage: "assets/2.png",
                    statusuploadname: "jaswal",
                  ),
                  Statusavatarwidget(
                    statusuploadimage: "assets/3.png",
                    statusuploadname: "jaswal",
                  ),
                  Statusavatarwidget(
                    statusuploadimage: "assets/0.png",
                    statusuploadname: "jaswal",
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),
            SizedBox(
              width: 0,
              height: 10,
            ),
            PicturePostWidget(
              uploaderName: "pakwheels",
              postIcon: "assets/c.png",
            ),
            PicturePostWidget(
              uploaderName: "ammar",
              postIcon: "assets/2.png",
              isSponsered: true,
              uploadersubtitle: 'Amazonia',
            ),
            // VideoPlayerWidget(),
          ],
        ),
      ),
    );
  }
}
