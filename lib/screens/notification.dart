import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/notification_widget.dart';

class Notificationscreen extends StatelessWidget {
  const Notificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Notification"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Notificationwidget(
            isfollow: true,
            text: 'ammar',
            profilePhoto: 'assets/2.png',
          ),
          Notificationwidget(
            text: 'jaswal',
            profilePhoto: 'assets/3.png',
          ),
          Notificationwidget(
            text: 'rehan',
            profilePhoto: 'assets/1.png',
          ),
          Notificationwidget(
            text: 'ali',
            profilePhoto: 'assets/0.png',
          ),
          Notificationwidget(
            text: 'ahmad',
            profilePhoto: 'assets/c.png',
          ),
        ]),
      ),
    );
  }
}
