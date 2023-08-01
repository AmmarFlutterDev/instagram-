import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/screens/bottom_bar.dart';
import 'package:instagram_clone/screens/forgot_pass.dart';
import 'package:instagram_clone/widgets/text_field.dart';
import 'package:instagram_clone/widgets/textbutton.dart';

import 'create_account.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Image(
                image: AssetImage('assets/logo1.png'),
                width: 40,
                height: 40,
              ),
              const SizedBox(height: 40),
              CustomTextField(
                hintText: 'Username or Email',

                controller: userNameController,
                // onSaved: (name) {
                //   name = userName;
                // },
              ),
              CustomTextField(
                hintText: 'Password',
                controller: passwordController,
                // onSaved: (pass) {
                //   pass = password;
                // },
              ),
              Customtextbuttom(
                width: double.infinity,
                height: 35,
                radius: 20,
                custombutton: 'Log in',
                color: const Color.fromARGB(255, 0, 140, 255),
                onPressed: () {
                  if (userNameController.text == 'ammar' &&
                      passwordController.text == 'Ammar123') {
                    Get.offAll(
                      Bottombar(currentIndex: 0),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Write correct Username and Password')));
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Get.to(const Forgotpassword());
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                height: 270,
              ),
              Customtextbuttom(
                onPressed: () => Get.to(const Createnewaccount()),
                custombutton: 'Create new account',
                width: double.infinity,
                radius: 20,
                height: 35,
                color: Colors.transparent,
                // border: Border.all(color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
