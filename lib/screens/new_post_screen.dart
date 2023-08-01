import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/screens/bottom_bar.dart';
import 'package:instagram_clone/widgets/Grid-view.dart';

class Newpostscreen extends StatelessWidget {
  const Newpostscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: TextButton(
              onPressed: () {
                Get.offAll(
                  Bottombar(
                    currentIndex: 0,
                  ),
                );
              },
              child: const Icon(
                Icons.close,
                color: Colors.white,
              )),
          backgroundColor: Colors.black,
          title: const Text("New post"),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Icon(
                  Icons.arrow_forward,
                )),
          ],
        ),
        body: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                const Image(image: AssetImage("assets/c.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, left: 10),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.black.withOpacity(.5),
                    child: TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.fit_screen,
                          size: 20,
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Spacer(flex: 3),
                const Text("Recents"),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
                const Spacer(flex: 25),
                GestureDetector(
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Color.fromARGB(221, 40, 39, 39),
                    child: Icon(
                      Icons.copy,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Color.fromARGB(221, 40, 39, 39),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                const Spacer(flex: 3),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Allpostgallery(
                crossAxisCount: 4,
              ),
            )
          ],
        ));
  }
}
