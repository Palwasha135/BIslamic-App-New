//import 'dart:ffi
import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
//import 'package:fyp/app/components/homeicon.dart';
import 'package:fyp/app/reusable_widgets/level.dart';
import 'package:fyp/app/screens/Dua/dua_main_screen/level2mainScreen.dart';
import 'package:fyp/app/screens/Dua/dua_main_screen/level3mainScreen.dart';
import 'package:fyp/app/screens/dua/dua_main_screen/level4mainScreen.dart';

import 'package:fyp/app/screens/home.dart';

import 'package:fyp/app/screens/Dua/dua_main_screen/level1mainScreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          showsearch: true,
          onleadingtap: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          actions: const [],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 39,
          ),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 9,
            ),
            children: [
              Levels(
                  title: 'Level 1',
                  containercolor: Colors.orange,
                  image: 'assets/images/secondlvl.png',
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Level1mainScreen()));
                  }),
              Levels(
                  title: 'Level 2',
                  containercolor: Colors.red,
                  image: 'assets/images/l2.png',
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Level2Screen()));
                  }),
              Levels(
                  title: 'Level 3',
                  containercolor: Colors.purple,
                  image: 'assets/images/l3.png',
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Level3Screen()));
                  }),
              Levels(
                  title: 'Level 4',
                  containercolor: Colors.blueAccent,
                  image: 'assets/images/l4.png',
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Level4Screen()));
                  })
            ],
          ),
        ),
        bottomNavigationBar: const Homeicon());
  }
}
