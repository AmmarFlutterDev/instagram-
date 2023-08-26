// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'custom_post.dart';

class Allpostgallery extends StatelessWidget {
  int crossAxisCount;
  Allpostgallery({
    required this.crossAxisCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: images.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) => Searchpagepost(
        images[index].toString(),
      ),
    );
  }
}

List images = <String>[
  'assets/0.png',
  'assets/1.png',
  'assets/3.png',
  'assets/4.png',
  'assets/6.png',
  'assets/c.png',
  'assets/4.png',
  'assets/6.png',
  'assets/c.png',
  'assets/1.png',
  'assets/2.png',
  'assets/3.png',
  'assets/4.png',
  'assets/6.png',
  'assets/c.png',
  'assets/4.png',
  'assets/4.png',
  'assets/6.png',
  'assets/c.png',
];
