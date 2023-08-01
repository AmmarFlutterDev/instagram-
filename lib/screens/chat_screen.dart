// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/chat_bubble.dart';

class ChatScreen extends StatefulWidget {
  bool issender = true;
  ChatScreen({required this.issender, super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Widget> messages = [];
  ScrollController controller = ScrollController();
  final sendController = TextEditingController();
  bool sendbutton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        // leading: const BackButton(),
        centerTitle: false,
        title: const Row(
          children: [
            BackButton(),
            SizedBox(width: 20),
            CircleAvatar(
              radius: 17,
              backgroundImage: AssetImage("assets/b.png"),
            ),
            SizedBox(width: 15),
            Column(
              children: [
                Text(
                  "Coleridge",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  "Active now ",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.phone_outlined)),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.emergency_recording_rounded),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        controller: controller,
        reverse: true,
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage("assets/2.png"),
            ),
            const Text(
              "Coleridge",
            ),
            const Text(
              "jAsWal_001.Instagram",
              style: TextStyle(fontSize: 15),
            ),
            const Text(
              "10k followers.1K posts",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const Text(
              "You don't follow each other on instagram",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                width: 100,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(137, 44, 42, 42),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View Profile",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "25 May,11:08 am",
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              controller: controller,
              shrinkWrap: true,
              itemCount: messages.length,
              itemBuilder: (context, index) => messages[index],
            ),
            // Chatbubble(
            //   text: "Aoa",
            //   issender: true,
            // ),
            // Chatbubble(
            //   text: "wsalam",
            //   issender: false,
            // ),
            // Chatbubble(
            //   text: "thk wa",
            //   issender: true,
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
        child: TextField(
          controller: sendController,
          onChanged: (value) {
            sendbutton = value.isEmpty;
            setState(() {});
          },
          cursorColor: Colors.grey,
          cursorWidth: 1.5,
          cursorHeight: 15,
          enableSuggestions: true,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            filled: true,
            fillColor: Colors.grey[900],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            prefixIcon: TextButton(
                onPressed: () {},
                child: const CircleAvatar(
                  radius: 17,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                )),
            hintText: 'Message',
            hintStyle:
                const TextStyle(color: Color.fromARGB(255, 188, 178, 178)),
            suffixIcon: sendbutton == true
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mic_none_outlined,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.photo_outlined,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.emoji_emotions,
                            color: Colors.white,
                          )),
                    ],
                  )
                : TextButton(
                    onPressed: () {
                      if (sendController.text.trim().isNotEmpty) {
                        messages.add(
                          Chatbubble(
                            text: sendController.text.trim(),
                            isSenderMe: true,
                          ),
                        );
                      }
                      sendController.clear();
                      setState(() {});
                    },
                    child: const Text(
                      'Send',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
          ),
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
