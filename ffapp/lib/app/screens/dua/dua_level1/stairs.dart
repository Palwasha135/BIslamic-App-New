import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';

import 'package:fyp/app/screens/Dua/dua_main_screen/level1mainScreen.dart';
import 'package:fyp/audio_path.dart';

import '../../../reusable_widgets/dua_screen_widget.dart';

void main() {
  runApp(const TwelfthScreen());
}

class TwelfthScreen extends StatefulWidget {
  const TwelfthScreen({super.key});

  @override
  State<TwelfthScreen> createState() => _TwelfthScreenState();
}

class _TwelfthScreenState extends State<TwelfthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
          Navigator.pop(
              context,
              MaterialPageRoute(
                  builder: (context) => const Level1mainScreen()));
        },
        actions: const [],
      ),
      body: const Column(
        children: [
          Expanded(
            child: Center(
              child: DuaScreen(
                assetImagePath: 'assets/images/stairs1.9.jpg',
                iconData: Homeicon(),
                path: AudioPaths.stairs,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
