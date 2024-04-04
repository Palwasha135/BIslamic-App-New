import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/reusable_widgets/seerah_gridform_widget.dart';
import 'package:fyp/app/screens/seerah/introduction/birth_place_screen.dart';
import 'package:fyp/app/screens/seerah/introduction/dob_screen.dart';
import 'package:fyp/app/screens/seerah/introduction/father_name_screen.dart';
import 'package:fyp/app/screens/seerah/introduction/foster_,mothername_screen.dart';
import 'package:fyp/app/screens/seerah/introduction/mother_name_screen.dart';
import 'package:fyp/app/screens/seerah/introduction/name_screen.dart';
import 'package:fyp/app/screens/seerah/seerah_main_screen.dart';

class IntroMainScreen extends StatelessWidget {
  const IntroMainScreen({super.key});

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
        padding: const EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 3, crossAxisSpacing: 3),
          children: [
            SeerahGridformScreen(
              imagepath: 'assets/images/Seerah/namecontainer.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NameScreen()));
              },
            ),
            SeerahGridformScreen(
              imagepath: 'assets/images/Seerah/birthplacecontainer.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BirthplaceScreen()));
              },
            ),
            SeerahGridformScreen(
              imagepath: 'assets/images/Seerah/datecontainer.png',
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DobScreen()));
              },
            ),
            SeerahGridformScreen(
              imagepath: 'assets/images/Seerah/mothernamecontainer.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MothernameScreen()));
              },
            ),
            SeerahGridformScreen(
              imagepath: 'assets/images/Seerah/fathernamecontainer.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FathernameScreen()));
              },
            ),
            SeerahGridformScreen(
              imagepath: 'assets/images/Seerah/fostermothernamecont.png',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FosterMothernameScreen()));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Homeicon(),
    );
  }
}
