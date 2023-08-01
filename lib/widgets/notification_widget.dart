// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Notificationwidget extends StatefulWidget {
  String profilePhoto;
  bool isfollow;
  String text;
  Notificationwidget({
    this.isfollow = false,
    required this.text,
    required this.profilePhoto,
    super.key,
  });

  @override
  State<Notificationwidget> createState() => _NotificationwidgetState();
}

class _NotificationwidgetState extends State<Notificationwidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 19,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(widget.profilePhoto),
        ),
      ),
      title: Text(
        widget.text,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      trailing: Container(
          width: 80,
          height: 33,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: widget.isfollow == true ? Colors.blue : Colors.grey),
          child: TextButton(
              onPressed: () {
                setState(() {
                  widget.isfollow = !widget.isfollow;
                });
              },
              child: Text(
                widget.isfollow ? "Follow" : 'Following',
                style: const TextStyle(color: Colors.white),
              ))),
    );
  }
}
