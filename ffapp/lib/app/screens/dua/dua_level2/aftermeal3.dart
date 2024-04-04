import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/dua_screen_widget.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';

import 'package:fyp/app/screens/Dua/dua_main_screen/level2mainScreen.dart';
import 'package:fyp/audio_path.dart';

class AfterMealScreen extends StatefulWidget {
  const AfterMealScreen({super.key});

  @override
  State<AfterMealScreen> createState() => _AfterMealScreenState();
}

class _AfterMealScreenState extends State<AfterMealScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
          Navigator.pop(context,
              MaterialPageRoute(builder: (context) => const Level2Screen()));
        },
        actions: const [],
      ),
      body: const Column(
        children: [
          Expanded(
              child: Center(
                  child: DuaScreen(
            assetImagePath: 'assets/images/level2/aftermeal.jpg',
            iconData: Homeicon(),
            path: AudioPaths.aftermeal,
          ))),
        ],
      ),
    );
  }
}
