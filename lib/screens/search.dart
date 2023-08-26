// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/Grid_view.dart';
import 'package:instagram_clone/widgets/custom_post.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(
            right: 12,
            // top: MediaQuery.paddingOf(context).top,
          ),
          child: SizedBox(
            height: 35,
            child: TextField(
              cursorColor: Colors.grey,
              cursorWidth: 1.5,
              cursorHeight: 15,
              decoration: InputDecoration(
                isCollapsed: true,
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 7),
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
                icon: IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
                hintText: 'Search',
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 188, 178, 178)),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      body: Allpostgallery(crossAxisCount: 3,),
    );
  }
}
