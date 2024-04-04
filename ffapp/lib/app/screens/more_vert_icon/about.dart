import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/screens/home.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
          Navigator.pop(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 43,
            ),
            const Center(
                child: Text(
              'About',
              style: TextStyle(color: Colors.white, fontSize: 33),
            )),
            const SizedBox(
              height: 21,
            ),
            Container(
                height: 300,
                width: 335,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 29, 172, 157),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(54),
                    bottomRight: Radius.circular(100),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 12,
                    right: 11,
                  ),
                  child: Text(
                      'This application that utilizes an attractive approach to teach children the fundamental tenets of Islam. This app covers topics such as daily supplications, the Pillars of Islam, and the Seerah of the Prophet (S.A.W.W).It is designed to promote Islamic education and values through a fun and engaging learning experience.',
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                )),
          ],
        ),
      ),
      bottomNavigationBar: const Homeicon(),
    );
  }
}
