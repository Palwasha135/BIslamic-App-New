// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/reusable_widgets/level.dart';
import 'package:fyp/app/screens/dua/dua_level4/afterAdhan.dart';
import 'package:fyp/app/screens/dua/dua_level4/Iftartime.dart';
import 'package:fyp/app/screens/dua/dua_level4/afterSalah.dart';
import 'package:fyp/app/screens/dua/dua_level4/boardingvehicle.dart';
import 'package:fyp/app/screens/dua/dua_level4/duringdonkeyvoice.dart';
import 'package:fyp/app/screens/dua/dua_level4/excessiverain.dart';
import 'package:fyp/app/screens/dua/dua_level4/lailatulqadar.dart';
import 'package:fyp/app/screens/dua/dua_level4/seeingnewmoon.dart';
import 'package:fyp/app/screens/dua/dua_level4/visitinggraveyard.dart';
import 'package:fyp/app/screens/dua/dua_level4/worldandakhirah.dart';
import 'package:fyp/app/screens/secondscreen.dart';

class Level4Screen extends StatefulWidget {
  const Level4Screen({super.key});

  @override
  State<Level4Screen> createState() => _Level4ScreenState();
}

class _Level4ScreenState extends State<Level4Screen> {
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
              title: 'After Adhan',
              containercolor: Colors.yellow,
              image: 'assets/images/level4/afteradhanimg.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AfteradhanScreen()));
              }),
          Levels(
              title: 'After Salah ',
              containercolor: Colors.pinkAccent,
              image: 'assets/images/level4/aftersalahimg.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AfterSalahScreen()));
              }),
          Levels(
              title: 'When Boarding A Vehicle ',
              containercolor: Colors.cyan,
              image: 'assets/images/level4/boardingvehicleimg.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BoardingvehicleScreen()));
              }),
          Levels(
              title: 'When Seeing New Moon ',
              containercolor: Color.fromARGB(255, 190, 143, 0),
              image: 'assets/images/level4/seeingmoonimg.jpg',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SeeingnewmoonScreen()));
              }),
          Levels(
              title: ' When Hear The Voice Of Donkey',
              containercolor: Colors.redAccent,
              image: 'assets/images/level4/duringdonkeyvoiceimg.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const DuringdonkeyvoiceduaScreen()));
              }),
          Levels(
              title: 'At The Time Of Iftar ',
              containercolor: Colors.teal,
              image: 'assets/images/level4/iftar.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IftartimeScreen()));
              }),
          Levels(
              title: ' For Lailat-ul-Qadar',
              containercolor: Colors.deepPurpleAccent,
              image: 'assets/images/level4/lailatulqadarimg.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LailatulqadarScreen()));
              }),
          Levels(
              title: ' Seeking Good InThis World And HereAfter',
              containercolor: Colors.limeAccent,
              image: 'assets/images/level4/worldandakhirahimg.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WorldandAkhirahScreen()));
              }),
          Levels(
              title: ' When Visiting Graveyard',
              containercolor: Colors.lightBlueAccent,
              image: 'assets/images/level4/visitinggraveyardimg.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VisitingGraveyardScreen()));
              }),
          Levels(
              title: ' During Rainstorm',
              containercolor: Colors.pink,
              image: 'assets/images/level4/excessiverainimg.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExcessiveRainScreen()));
              }),
        ],
      ),
      bottomNavigationBar: const Homeicon(),
    );
  }
}
