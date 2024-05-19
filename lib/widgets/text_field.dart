// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  final TextEditingController? controller;
  void Function(String?)? onSaved;
  bool obscureText;

  CustomTextField({
    required this.hintText,
    this.controller,
    this.onSaved,
    this.obscureText = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.grey,
        onSaved: onSaved,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabled: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          filled: true,
          fillColor: Colors.grey.shade800,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color.fromARGB(255, 188, 178, 178)),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
