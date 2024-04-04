import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/reusable_widgets/home_screen_container.dart';
import 'package:fyp/app/screens/home.dart';

import 'package:fyp/app/screens/seerah/Sunnah_o_aadaab/sunnah_main_screen.dart';
import 'package:fyp/app/screens/seerah/family/family_gridform_screen.dart';

import 'package:fyp/app/screens/seerah/introduction/intro_main_screen.dart';

class SeerahMainScreen extends StatefulWidget {
  const SeerahMainScreen({super.key});

  @override
  State<SeerahMainScreen> createState() => _SeerahMainScreenState();
}

class _SeerahMainScreenState extends State<SeerahMainScreen> {
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 39),
              Mybutton(
                title: 'Introduction',
                assetImagePath: 'assets/images/Seerah/introduction.png',
                //assetImagePath1: null,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IntroMainScreen()));
                },
                btnColor: Colors.orange,
              ),
              Mybutton(
                title: 'Family',
                assetImagePath: 'assets/images/Seerah/family.png',
                //assetImagePath1: null,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FamilygridformScreen()));
                },
                btnColor: Colors.purple,
              ),
              Mybutton(
                title: 'Sunnah',
                assetImagePath: 'assets/images/Seerah/Sunnah.png',
                //assetImagePath1: '',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SunnahgridformScreen()));
                },
                btnColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Homeicon(onPressed: () {
        Navigator.pop(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      }),
    );
  }
}
