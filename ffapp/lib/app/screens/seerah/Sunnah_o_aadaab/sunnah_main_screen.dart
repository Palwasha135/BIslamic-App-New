import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/reusable_widgets/seerah_gridform_widget.dart';
import 'package:fyp/app/screens/seerah/Sunnah_o_aadaab/dressingSunnah.dart';
import 'package:fyp/app/screens/seerah/Sunnah_o_aadaab/eatingSunnah.dart';
import 'package:fyp/app/screens/seerah/Sunnah_o_aadaab/greetingSunnah.dart';
import 'package:fyp/app/screens/seerah/Sunnah_o_aadaab/waterSunnah.dart';
import 'package:fyp/app/screens/seerah/seerah_main_screen.dart';

class SunnahgridformScreen extends StatelessWidget {
  const SunnahgridformScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
          Navigator.pop(
              context,
              MaterialPageRoute(
                  builder: (context) => const SeerahMainScreen()));
        },
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 23.0,
          left: 13.0,
          right: 13.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SeerahGridformScreen(
                imagepath: 'assets/images/Seerah/waterSunnahcontainer.png',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WaterSunnahScreen()));
                },
              ),
              SeerahGridformScreen(
                imagepath: 'assets/images/Seerah/eatingSunnahcontainer.png',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EatingSunnahScreen()));
                },
              ),
              SeerahGridformScreen(
                imagepath: 'assets/images/Seerah/dressingcontainer.png',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DressingSunnahScreen()));
                },
              ),
              SeerahGridformScreen(
                imagepath: 'assets/images/Seerah/greetingSunnahcontainer.png',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GreetingSunnahScreen()));
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Homeicon(),
    );
  }
}
