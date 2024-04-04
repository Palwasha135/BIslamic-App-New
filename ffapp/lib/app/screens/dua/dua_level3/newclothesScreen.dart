import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/dua_screen_widget.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/screens/Dua/dua_main_screen/level3mainScreen.dart';
import 'package:fyp/audio_path.dart';

class WearingnewClothesScreen extends StatefulWidget {
  const WearingnewClothesScreen({super.key});

  @override
  State<WearingnewClothesScreen> createState() =>
      _WearingnewClothesScreenState();
}

class _WearingnewClothesScreenState extends State<WearingnewClothesScreen> {
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
            assetImagePath: 'assets/images/level3/newclothes.jpg',
            iconData: Homeicon(),
            path: AudioPaths.newcloths,
          ))),
        ],
      ),
    );
  }
}
