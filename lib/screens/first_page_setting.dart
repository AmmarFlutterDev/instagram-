import 'package:flutter/material.dart';

class ManageSetting extends StatelessWidget {
  const ManageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Manage Profiles'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 46, 46, 44),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                ),
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
                          onPressed: () {
                            
                          },
                          child: const Text(
                            'jsawal',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        )
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
