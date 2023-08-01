import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/insta_gallery.dart';

class Yourstory extends StatefulWidget {
  const Yourstory({super.key});

  @override
  State<Yourstory> createState() => _YourstoryState();
}

class _YourstoryState extends State<Yourstory> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (value) {
            return const InstaGalleryScreen();
          }),
        );
      },
      child: const Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 33,
                backgroundImage: AssetImage("assets/c.png"),
              ),
              CircleAvatar(
                radius: 9,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 7.5,
                  backgroundImage: AssetImage("assets/4.png"),
                ),
              ),
            ],
          ),
          Text(
            "Your story",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
