import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/screens/seerah/family/family_gridform_screen.dart';
import 'package:fyp/audio_path.dart';
import '../../../reusable_widgets/dua_screen_widget.dart';

class AuntnamesScreen extends StatefulWidget {
  const AuntnamesScreen({super.key});

  @override
  State<AuntnamesScreen> createState() => _AuntnamesScreenState();
}

class _AuntnamesScreenState extends State<AuntnamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
          Navigator.pop(
              context,
              MaterialPageRoute(
                  builder: (context) => const FamilygridformScreen()));
        },
        actions: const [],
      ),
      body: const Column(
        children: [
          Expanded(
              child: Center(
                  child: DuaScreen(
            assetImagePath: 'assets/images/Seerah/aunties.jpg',
            iconData: Homeicon(),
            path: AudioPaths.aunts,
          ))),
        ],
      ),
    );
  }
}
