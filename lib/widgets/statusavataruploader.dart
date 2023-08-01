// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/status_view.dart';

// ignore: must_be_immutable
class Statusavatarwidget extends StatefulWidget {
  String statusuploadimage;
  String statusuploadname;
  bool isclicked;

  Statusavatarwidget({
    required this.statusuploadimage,
    required this.statusuploadname,
    this.isclicked = true,
    super.key,
  });

  @override
  State<Statusavatarwidget> createState() => _StatusavatarwidgetState();
}

class _StatusavatarwidgetState extends State<Statusavatarwidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (value) {
          return Statusviewscreen();
        }));
        setState(() {
          widget.isclicked = !widget.isclicked;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(left: 0, right: 0),
        child: Column(
          children: [
            CircleAvatar(
              radius: widget.isclicked == true ? 35 : 33,
              backgroundColor:
                  widget.isclicked == false ? Colors.grey : Colors.red,
              child: CircleAvatar(
                radius: 33,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(widget.statusuploadimage),
                ),
              ),
            ),
            Text(
              widget.statusuploadname,
              style: TextStyle(
                  color:
                      widget.isclicked == false ? Colors.grey : Colors.white),
            ),
            Divider(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
