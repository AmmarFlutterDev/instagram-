// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/screens/bottom_bar.dart';
import 'package:instagram_clone/screens/first_instalogin.dart';
import 'package:instagram_clone/screens/login_screen.dart';
/*
/// Flutter commands
flutter clean
flutter pub get
flutter build apk
flutter pub add package_name
flutter doctor
flutter create project_name
flutter --version
*/

void main() =>
    // ignore: prefer_const_constructors
    runApp(
      const MyWidget(),
    );

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
