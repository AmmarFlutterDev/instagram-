// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Chatbubble extends StatelessWidget {
  String text;
  bool isSenderMe;

  Chatbubble({this.isSenderMe = true, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 7, left: 7, bottom: 2),
      child: SingleChildScrollView(
        child: Align(
          alignment:
              isSenderMe == true ? Alignment.topRight : Alignment.topLeft,
          child: Row(
            mainAxisAlignment: isSenderMe == false
                ? MainAxisAlignment.start
                : MainAxisAlignment.end,
            children: [
              isSenderMe == false
                  ? const CircleAvatar(
                      radius: 10,
                      backgroundImage: AssetImage('assets/a.png'),
                    )
                  : const SizedBox(),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: isSenderMe == true
                        ? const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                        : const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                    color: isSenderMe == true
                        ? const Color.fromARGB(115, 42, 40, 40)
                        : Colors.purple),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 6, right: 6, top: 4, bottom: 4),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
