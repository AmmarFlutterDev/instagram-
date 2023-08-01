import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/text_field.dart';
import 'package:instagram_clone/widgets/textbutton.dart';

class Createnewaccount extends StatelessWidget {
  const Createnewaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What' 's your mobile number?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              'enter the mobile nmber where you can be contacted. No one will see this on your profile.',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(hintText: 'mobile number'),
            const Text(
              'You may receive SMS notifications from us for security and login purposes.',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(
              height: 15,
            ),
            Customtextbuttom(
              custombutton: 'Next',
              radius: 20,
              width: double.infinity,
              color: const Color.fromARGB(255, 1, 141, 255),
            ),
            const SizedBox(
              height: 10,
            ),
            Customtextbuttom(
              custombutton: 'Sign up with email',
              radius: 20,
              width: double.infinity,
            ),
            const Spacer(),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text('Already have an account?')),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
