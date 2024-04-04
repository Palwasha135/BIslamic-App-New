import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/dua_screen_widget.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';

import 'package:fyp/app/screens/Dua/dua_main_screen/level3mainScreen.dart';
import 'package:fyp/audio_path.dart';

class UndressingDuaScreen extends StatefulWidget {
  const UndressingDuaScreen({super.key});

  @override
  State<UndressingDuaScreen> createState() => _UndressingDuaScreenState();
}

class _UndressingDuaScreenState extends State<UndressingDuaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
          Navigator.pop(context,
              MaterialPageRoute(builder: (context) => const Level3Screen()));
        },
        actions: const [],
      ),
      body: const Column(
        children: [
          Expanded(
              child: Center(
                  child: DuaScreen(
            assetImagePath: 'assets/images/level3/undressingdua.jpg',
            iconData: Homeicon(),
            path: AudioPaths.undressing,
          ))),
        ],
      ),
    );
  }
}
