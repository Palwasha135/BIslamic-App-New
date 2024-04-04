import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/dua_screen_widget.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/screens/pillarofIslam/pillar_main_screen/pillar_screen.dart';
import 'package:fyp/audio_path.dart';

class Salahscreen extends StatelessWidget {
  const Salahscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
          Navigator.pop(
              context, MaterialPageRoute(builder: (context) => const PP()));
        },
        actions: const [],
      ),
      body: const DuaScreen(
        assetImagePath: 'assets/images/Sscreen.jpg',
        iconData: Homeicon(),
        path: AudioPaths.salah,
      ),
    );
  }
}
