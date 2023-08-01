import 'package:flutter/material.dart';

class InstaGalleryScreen extends StatelessWidget {
  const InstaGalleryScreen({super.key});

  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: const Center(
          child: Text(
        "story coming soon",
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
