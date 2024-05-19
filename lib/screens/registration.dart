import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/widgets/text_field.dart';
import 'package:instagram_clone/widgets/textbutton.dart';
import 'package:instagram_clone/screens/bottom_bar.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  bool isValidEmail(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

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
              CustomTextField(
                hintText: 'Confirm Password',
                controller: confirmPasswordController,
                obscureText: true,
              ),
              Customtextbuttom(
                width: double.infinity,
                height: 35,
                radius: 20,
                custombutton: 'Create Account',
                color: const Color.fromARGB(255, 0, 140, 255),
                onPressed: () async {
                  String email = emailController.text.trim();
                  String password = passwordController.text.trim();
                  String confirmPassword = confirmPasswordController.text.trim();

                  if (!isValidEmail(email)) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Invalid email address')),
                    );
                    return;
                  }

                  if (password != confirmPassword) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Passwords do not match')),
                    );
                    return;
                  }

                  try {
                    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
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
            ],
          ),
        ),
      ),
    );
  }
}
