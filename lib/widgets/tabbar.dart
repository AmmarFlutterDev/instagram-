// ignore_for_file: unused_local_variable, must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/Grid-view.dart';

class Tabbar extends StatefulWidget {
  ScrollController? controller;

  bool isclicked = false;
  Tabbar({this.controller, required this.isclicked, super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    int length = 3;
    TabController tabController = TabController(length: length, vsync: this);
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        children: [
          DefaultTabController(
            length: length,
            initialIndex: 2,
            // color: Colors.black,
            child: TabBar(
              indicatorColor: Colors.white,
              controller: tabController,
              labelPadding: const EdgeInsets.symmetric(horizontal: 30),
              unselectedLabelColor: Colors.red,
              unselectedLabelStyle: const TextStyle(color: Colors.blue),
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.view_module_outlined,
                    size: 26,
                    color:
                        widget.isclicked == true ? Colors.white : Colors.grey,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.ondemand_video,
                    size: 26,
                    color:
                        widget.isclicked == true ? Colors.white : Colors.grey,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person_pin_outlined,
                    size: 26,
                    color:
                        widget.isclicked == true ? Colors.white : Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Allpostgallery(crossAxisCount: 3),
                Allpostgallery(crossAxisCount: 3),
                const SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 140,
                      ),
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.person_pin_outlined,
                            size: 55,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        'Photos and\nvideos of you',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'when people tag your photos\n and videos, they will appear here',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                )
                // const Icon(Icons.person_pin_outlined,
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
