import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/active_members.dart';
import 'package:instagram_clone/widgets/chat.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Row(
          children: [Text("_ammar_riaz"), Icon(Icons.keyboard_arrow_down)],
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.photo_camera_front,
                color: Colors.white,
                size: 25,
              )),
          TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.edit_calendar_outlined,
                color: Colors.white,
                size: 25,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 35,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                cursorColor: Colors.grey,
                cursorWidth: 1.5,
                cursorHeight: 15,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  filled: true,
                  fillColor: Colors.grey[900],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                    color: Color.fromARGB(255, 73, 67, 67),
                  ),
                  hintText: 'search',
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 188, 178, 178)),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: ScrollController(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 15,
                ),
                Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage("assets/a.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.grey.shade600,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white60,
                        ),
                      ),
                    )
                  ],
                ),
                const ActiveMembersListWidget(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Text("Message"),
                Spacer(
                  flex: 80,
                ),
                Text(
                  "Requests",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          const Chatwidget(),
        ],
      ),
    );
  }
}
