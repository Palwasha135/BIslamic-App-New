import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/reusable_widgets/seerah_gridform_widget.dart';
import 'package:fyp/app/screens/seerah/family/aunts.dart';
import 'package:fyp/app/screens/seerah/family/daughters.dart';
import 'package:fyp/app/screens/seerah/family/sons.dart';
import 'package:fyp/app/screens/seerah/family/wives.dart';
import 'package:fyp/app/screens/seerah/family/uncles.dart';
import 'package:fyp/app/screens/seerah/seerah_main_screen.dart';

class FamilygridformScreen extends StatelessWidget {
  const FamilygridformScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
          Navigator.pop(
              context,
              MaterialPageRoute(
                  builder: (context) => const SeerahMainScreen()));
        },
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 33.0,
          left: 13.0,
          right: 13.0,
        ),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
          ),
          children: [
            SeerahGridformScreen(
              imagepath: 'assets/images/Seerah/wivescontainer.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WivesnamesScreen()));
              },
            ),
            SeerahGridformScreen(
              imagepath: 'assets/images/Seerah/sonscontainer.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SonsnamesScreen()));
              },
            ),
            SeerahGridformScreen(
              imagepath: 'assets/images/Seerah/daughterscontainer.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DaughtersnamesScreen()));
              },
            ),
            SeerahGridformScreen(
              imagepath: 'assets/images/Seerah/unclenamescontainer.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UnclenamesScreen()));
              },
            ),
            SeerahGridformScreen(
              imagepath: 'assets/images/Seerah/auntnamescontainer.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AuntnamesScreen()));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Homeicon(),
    );
  }
}
