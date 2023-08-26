import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
flutter pub add firebase_core
*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // ignore: prefer_const_constructors
  runApp(
    const MyWidget(),
  );
}

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
