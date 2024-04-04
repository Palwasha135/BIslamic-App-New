// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
//import 'package:fyp/app/screens/duaslevel2/aftermeal3.dart';
import 'package:fyp/app/screens/Dua/dua_level2/badnews10.dart';
import 'package:fyp/app/screens/Dua/dua_level2/beforemeal1.dart';
import 'package:fyp/app/screens/Dua/dua_level2/dining5.dart';
import 'package:fyp/app/screens/Dua/dua_level2/drinkingmilk4.dart';
import 'package:fyp/app/screens/Dua/dua_level2/entringtoilet8.dart';
import 'package:fyp/app/screens/Dua/dua_level2/forgetBismillah2.dart';
import 'package:fyp/app/screens/Dua/dua_level2/goingbed6.dart';
import 'package:fyp/app/screens/Dua/dua_level2/leavingtoilet9.dart';
import 'package:fyp/app/screens/Dua/dua_level2/wakingup7.dart';
import 'package:fyp/app/reusable_widgets/level.dart';
import 'package:fyp/app/screens/dua/dua_level2/aftermeal3.dart';
import 'package:fyp/app/screens/secondscreen.dart';

class Level2Screen extends StatefulWidget {
  const Level2Screen({super.key});

  @override
  State<Level2Screen> createState() => _Level2ScreenState();
}

class _Level2ScreenState extends State<Level2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        //title: 'B Islamic',

        onleadingtap: () {
          Navigator.pop(context,
              MaterialPageRoute(builder: (context) => const SecondScreen()));
        },
        actions: const [
          //  IconButton(onPressed: (){
          //   Navigator.push(context, MaterialPageRoute(builder: (context)=> FourthScreen()));
          //  }, icon:const Icon(Icons.next_plan_rounded),iconSize: 38,)
        ],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 9,
          crossAxisSpacing: 19,
        ),
        children: [
          Levels(
              title: ' Before Meal',
              containercolor: Colors.orange,
              image: 'assets/images/level2/1.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BeforeMealScreen()));
              }),
          Levels(
              title: ' When Forget Dua Before Meal ',
              containercolor: Colors.red,
              image: 'assets/images/level2/2.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgetduaScreen()));
              }),
          Levels(
              title: ' After Meal',
              containercolor: Colors.purple,
              image: 'assets/images/level2/aftermealimg.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AfterMealScreen()));
              }),
          Levels(
              title: ' After Drinking Milk ',
              containercolor: Colors.blueAccent,
              image: 'assets/images/level2/4.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MilkduaScreen()));
              }),
          Levels(
              title: ' When Dining Someone`s House ',
              containercolor: Colors.yellow,
              image: 'assets/images/level2/5.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DiningScreen()));
              }),
          Levels(
              title: ' Before Going To Bed',
              containercolor: Colors.cyanAccent,
              image: 'assets/images/level2/6.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BedduaScreen()));
              }),
          Levels(
              title: ' When Waking Up',
              containercolor: Colors.deepOrange,
              image: 'assets/images/level2/7.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WakingupScreen()));
              }),
          Levels(
              title: '  When Entring The Toilet',
              containercolor: Colors.pink,
              image: 'assets/images/level2/8.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EntringScreen()));
              }),
          Levels(
              title: ' When Leaving The Toilet',
              containercolor: Colors.deepPurpleAccent,
              image: 'assets/images/level2/9.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LeavingScreen()));
              }),
          Levels(
              title: ' When Hear Bad \n News',
              containercolor: Colors.yellowAccent,
              image: 'assets/images/level2/10.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BadnewsScreen()));
              }),
        ],
      ),
      bottomNavigationBar: const Homeicon(),
    );
  }
}
