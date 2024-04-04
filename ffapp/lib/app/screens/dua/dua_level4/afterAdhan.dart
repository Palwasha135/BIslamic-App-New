import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/dua_screen_widget.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/screens/dua/dua_main_screen/level4mainScreen.dart';
import 'package:fyp/audio_path.dart';

class AfteradhanScreen extends StatefulWidget {
  const AfteradhanScreen({super.key});

  @override
  State<AfteradhanScreen> createState() => _AfteradhanScreenState();
}

class _AfteradhanScreenState extends State<AfteradhanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
          Navigator.pop(context,
              MaterialPageRoute(builder: (context) => const Level4Screen()));
        },
        actions: const [],
      ),
      body: const Column(
        children: [
          Expanded(
              child: Center(
                  child: DuaScreen(
            assetImagePath: 'assets/images/level4/afteradhan.jpg',
            iconData: Homeicon(),
            path: AudioPaths.afteradhan,
          ))),
        ],
      ),
    );
  }
}
