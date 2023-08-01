// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home.dart';
import 'package:instagram_clone/screens/new_post_screen.dart';
import 'package:instagram_clone/screens/profile.dart';
import 'package:instagram_clone/screens/search.dart';

import 'notification.dart';

class Bottombar extends StatefulWidget {
   int currentIndex;
   Bottombar({
    this.currentIndex  = 0,
    super.key,
  });
  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  List pages = [
    const Homescreens(),
    const Searchscreen(),
    const Newpostscreen(),
    const Notificationscreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: pages.elementAt(widget.currentIndex),
        bottomNavigationBar:widget. currentIndex == 2
            ? const SizedBox()
            : BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedIconTheme: const IconThemeData(
                  color: Colors.white,
                ),
                unselectedIconTheme: const IconThemeData(color: Colors.white),
                backgroundColor: Colors.black,
                currentIndex: widget.currentIndex,
                selectedLabelStyle: const TextStyle(fontSize: 0),
                unselectedLabelStyle: const TextStyle(fontSize: 0),
                onTap: (value) {
                  setState(() {
                  widget.  currentIndex = value;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    icon:widget. currentIndex == 0
                        ? const Icon(Icons.home_filled)
                        : const Icon(Icons.home_outlined),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                      icon:widget. currentIndex == 1
                          ? const Icon(Icons.saved_search)
                          : const Icon(
                              Icons.search,
                            ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon:widget. currentIndex == 2
                          ? const Icon(Icons.add_box_sharp)
                          : const Icon(
                              Icons.add,
                            ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: widget.currentIndex == 3
                          ? const Icon(Icons.favorite)
                          : const Icon(Icons.favorite_border_outlined),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: CircleAvatar(
                        radius: widget.currentIndex == 4 ? 14 : 12,
                        backgroundColor: Colors.white,
                        child: const CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage("assets/profile.png"),
                        ),
                      ),
                      label: ''),
                ],
              ));
  }
}
