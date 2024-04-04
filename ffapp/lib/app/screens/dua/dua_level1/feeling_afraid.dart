import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';

import 'package:fyp/app/screens/Dua/dua_main_screen/level1mainScreen.dart';
import 'package:fyp/audio_path.dart';
//import 'package:fyp/app/screens/home.dart';

import '../../../reusable_widgets/dua_screen_widget.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({super.key});

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
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
            assetImagePath: 'assets/images/afraid1.2.jpg',
            iconData: Homeicon(),
            path: AudioPaths.afraid,
          ))),
        ],
      ),
//  bottomNavigationBar:IconButton(onPressed: (){
// Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//           }, icon: const Icon(Icons.home_rounded),iconSize: 44,color: Colors.deepOrange,),
    );
  }
}
