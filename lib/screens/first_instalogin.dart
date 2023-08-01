// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/screens/first_page_setting.dart';
import 'package:instagram_clone/widgets/textbutton.dart';

class NewUseraccout extends StatelessWidget {
  const NewUseraccout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(ManageSetting());
              },
              icon: const Icon(Icons.settings)),
        ],
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Center(
              child: Image(
                image: AssetImage('assets/logo1.png'),
                width: 40,
                height: 40,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 46, 46, 44),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage('assets/0.png'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'jsawal',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage('assets/2.png'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'coleridge',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Customtextbuttom(
                height: 35,
                custombutton: 'Log into another account',
                radius: 20,
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 250,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Create new account',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
