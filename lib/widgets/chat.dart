import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/screens/chat_screen.dart';

class Chatwidget extends StatelessWidget {
  const Chatwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          controller: ScrollController(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(8),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                Get.to(ChatScreen(
                  issender: true,
                ));
              },
              leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/d.png"),
              ),
              title: const Text(
                "jaswal",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              subtitle: const Text(
                "Active 1 hour ago",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              trailing: TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  )),
            );
          }),
    );
  }
}
