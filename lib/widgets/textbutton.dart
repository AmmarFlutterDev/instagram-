// ignore_for_file: must_be_immutable, unused_import

import 'package:flutter/material.dart';

class Customtextbuttom extends StatelessWidget {
  String custombutton;
  void Function()? onPressed;
  Color? color;
  double? width, height;
  double? radius;

  Customtextbuttom({
    super.key,
    required this.custombutton,
    this.color,
    this.onPressed,
    this.height,
    this.width,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        color: color ?? const Color.fromARGB(255, 61, 59, 59),
        borderRadius: BorderRadius.circular(radius ?? 4),
      ),
      height: height ?? 33,
      width: width ?? 105,
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            custombutton,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
