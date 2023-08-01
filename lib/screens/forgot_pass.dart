import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/text_field.dart';
import 'package:instagram_clone/widgets/textbutton.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            const Text(
              'Find your account',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'ENTER YOUR USERNAME, EMAIL,OR MOBILE number',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'Can not reset your password?',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 140, 255), fontSize: 12),
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextField(hintText: 'Username, email,or mobile number'),
            Customtextbuttom(
              custombutton: 'Find account',
              radius: 20,
              color: Colors.blue,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
