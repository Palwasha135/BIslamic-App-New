import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/screens/seerah/introduction/intro_main_screen.dart';
import 'package:fyp/audio_path.dart';
import '../../../reusable_widgets/dua_screen_widget.dart';

class MothernameScreen extends StatefulWidget {
  const MothernameScreen({super.key});

  @override
  State<MothernameScreen> createState() => _MothernameScreenState();
}

class _MothernameScreenState extends State<MothernameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
          Navigator.pop(context,
              MaterialPageRoute(builder: (context) => const IntroMainScreen()));
        },
        actions: const [],
      ),
      body: const Column(
        children: [
          Expanded(
              child: Center(
                  child: DuaScreen(
            assetImagePath: 'assets/images/Seerah/mothername.jpg',
            iconData: Homeicon(),
            path: AudioPaths.mother,
          ))),
        ],
      ),
    );
  }
}
