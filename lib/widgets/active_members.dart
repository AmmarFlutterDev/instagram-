import 'package:flutter/material.dart';

class ActiveMembersListWidget extends StatelessWidget {
  const ActiveMembersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(8),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 5,
                  ),
                  child: CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage("assets/b.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 47, left: 58),
                  child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      )),
                ),
              ],
            );
            // ignore: dead_code
          }),
    );
  }
}
