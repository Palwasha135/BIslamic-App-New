import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';

import 'package:fyp/app/screens/Dua/dua_main_screen/level1mainScreen.dart';
import 'package:fyp/audio_path.dart';

import '../../../reusable_widgets/dua_screen_widget.dart';

class NinthScreen extends StatefulWidget {
  const NinthScreen({super.key});

  @override
  State<NinthScreen> createState() => _NinthScreenState();
}

class _NinthScreenState extends State<NinthScreen> {
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
            assetImagePath: 'assets/images/forgivness1.6.jpg',
            iconData: Homeicon(),
            path: AudioPaths.forgiveness,
          ))),
        ],
      ),
    );
  }
}
