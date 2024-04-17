// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/screens/Dua/dua_level1/increase_knowledge.dart';
import 'package:fyp/app/screens/Dua/dua_level1/visiting_ill.dart';
import 'package:fyp/app/screens/Dua/dua_level1/feeling_afraid.dart';
import 'package:fyp/app/screens/Dua/dua_level1/upon_sneezing.dart';
import 'package:fyp/app/screens/Dua/dua_level1/forgiveness.dart';
import 'package:fyp/app/screens/dua/dua_level1/forrain.dart';

//import 'package:fyp/app/screens/home.dart';
import 'package:fyp/app/screens/secondscreen.dart';

import 'package:fyp/app/reusable_widgets/level.dart';
import 'package:fyp/app/screens/Dua/dua_level1/smiling.dart';
import 'package:fyp/app/screens/Dua/dua_level1/thanking_someone.dart';
import 'package:fyp/app/screens/Dua/dua_level1/when_rain.dart';
import 'package:fyp/app/screens/Dua/dua_level1/stairs.dart';

class Level1mainScreen extends StatefulWidget {
  const Level1mainScreen({super.key});

  @override
  State<Level1mainScreen> createState() => _Level1mainScreenState();
}

class _Level1mainScreenState extends State<Level1mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        //title: 'B Islamic',

        onleadingtap: () {
          Navigator.pop(context,
              MaterialPageRoute(builder: (context) => const SecondScreen()));
        },
        actions: const [],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 9,
          crossAxisSpacing: 19,
        ),
        children: [
          Levels(
              title: ' Upon Sneezing',
              containercolor: Colors.orange,
              image: 'assets/images/1.1.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FourthScreen()));
              }),
          Levels(
              title: ' When Feeling Afraid ',
              containercolor: Colors.red,
              image: 'assets/images/1.2.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FifthScreen()));
              }),
          Levels(
              title: 'Thanking \n Someone ',
              containercolor: Colors.purple,
              image: 'assets/images/1.3.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SixthScreen()));
              }),
          Levels(
              title: 'When Seeing Muslim Smiling ',
              containercolor: Colors.blueAccent,
              image: 'assets/images/1.4.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SeventhScreen()));
              }),
          Levels(
              title: ' For Increase Knowledge ',
              containercolor: const Color.fromARGB(255, 152, 160, 84),
              image: 'assets/images/1.5.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EightScreen()));
              }),
          Levels(
              title: 'For Forgiveness ',
              containercolor: Colors.cyanAccent,
              image: 'assets/images/1.6.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NinthScreen()));
              }),
          Levels(
              title: ' When It Rains ',
              containercolor: Colors.yellow,
              image: 'assets/images/1.7.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TenthScreen()));
              }),
          Levels(
              title: '  While Visiting The ill',
              containercolor: Colors.pink,
              image: 'assets/images/1.8.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EleventhScreen()));
              }),
          Levels(
              title: ' While Ascending or Descending',
              containercolor: Colors.lightGreen,
              image: 'assets/images/1.9.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TwelfthScreen()));
              }),
          Levels(
              title: ' For Rain',
              containercolor: Colors.orange,
              image: 'assets/images/forrainimg.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RainsScreen()));
              }),
        ],
      ),
      bottomNavigationBar: const Homeicon(),
    );
  }
}
