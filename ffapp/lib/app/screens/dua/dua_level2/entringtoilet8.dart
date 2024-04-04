import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/dua_screen_widget.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';

import 'package:fyp/app/screens/Dua/dua_main_screen/level2mainScreen.dart';
import 'package:fyp/audio_path.dart';

class EntringScreen extends StatefulWidget {
  const EntringScreen({super.key});

  @override
  State<EntringScreen> createState() => _EntringScreenState();
}

class _EntringScreenState extends State<EntringScreen> {
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
            assetImagePath: 'assets/images/level2/entring8.jpg',
            iconData: Homeicon(),
            path: AudioPaths.enteringtoilet,
          ))),
        ],
      ),
    );
  }
}
