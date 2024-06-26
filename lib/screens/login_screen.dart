import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/screens/bottom_bar.dart';
import 'package:instagram_clone/screens/forgot_pass.dart';
import 'package:instagram_clone/screens/registration.dart';
import 'package:instagram_clone/widgets/text_field.dart';
import 'package:instagram_clone/widgets/textbutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  bool isValidEmail(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Image(
                image: AssetImage('assets/logo1.png'),
                width: 40,
                height: 40,
              ),
              const SizedBox(height: 40),
              CustomTextField(
                hintText: 'Email',
                controller: emailController,
                obscureText: false,
              ),
              CustomTextField(
                hintText: 'Password',
                controller: passwordController,
                obscureText: true,
              ),
              Customtextbuttom(
                width: double.infinity,
                height: 35,
                radius: 20,
                custombutton: 'Log in',
                color: const Color.fromARGB(255, 0, 140, 255),
                onPressed: () async {
                  String email = emailController.text.trim();
                  String password = passwordController.text.trim();

                  if (!isValidEmail(email)) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Invalid email address')),
                    );
                    return;
                  }

                  try {
                    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                    if (userCredential.user != null) {
                      Get.offAll(Bottombar());
                    }
                  } catch (e) {
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(e.toString())),
                    );
                  }
                },
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Get.to(const Forgotpassword());
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 270),
              Customtextbuttom(
                onPressed: () {
                  Get.to(const CreateAccountScreen());
                },
                custombutton: 'Create new account',
                width: double.infinity,
                radius: 20,
                height: 35,
                color: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
