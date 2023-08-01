import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Searchpagepost extends StatelessWidget {
  String image;
  Searchpagepost(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Image(
        image: AssetImage(image),
        width: 130,
        fit: BoxFit.cover,
      ),
    );
  }
}
