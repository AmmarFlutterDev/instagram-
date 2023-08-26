// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/widgets/statusavataruploader.dart';
import 'package:instagram_clone/widgets/textbutton.dart';

import '../widgets/tabbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(context) {
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
          IconButton(
              onPressed: () {
                Get.bottomSheet(addbottomsheet());
              },
              icon: Icon(Icons.add_box_outlined)),
          GestureDetector(
            onTap: () {
              Get.bottomSheet(bottomsheet(), isScrollControlled: true);
            },
            child: Icon(Icons.list),
          )
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
                  Customtextbuttom(
                    custombutton: "Share profile",
                  ),
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

  bottomsheet() {
    return Container(
      height: Get.height,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 34, 33, 33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: 35,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          customListTile(Icons.settings, ' Settings and privacy'),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.alternate_email_outlined, '  Threads '),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.access_time_rounded, ' Your activity'),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.qr_code_scanner_sharp, ' QR code  '),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.bookmark_border_rounded, 'Save'),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.supervisor_account, ' Suspension  '),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.payment_outlined, ' Orders and payments'),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.format_list_numbered_sharp, ' Close friends'),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.star_border, ' Favorites'),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  addbottomsheet() {
    return Container(
      height: Get.height,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 34, 33, 33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: 35,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Create',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 0.1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.slow_motion_video_sharp, ' Reel'),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.picture_in_picture_alt_outlined, ' Post'),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.add_circle_outline_sharp, ' Story'),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.highlight_alt_rounded, ' Story Highlight'),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.slow_motion_video_sharp, ' Live'),
          SizedBox(
            height: 15,
          ),
          customListTile(Icons.menu_book_outlined, ' Guide'),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  customListTile(
    IconData icon,
    String text,
  ) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ],
    );
  }
}
