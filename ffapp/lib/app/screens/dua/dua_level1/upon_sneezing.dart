// import 'package:flutter/material.dart';
// import 'package:fyp/app/components/appbar.dart';
// import 'package:fyp/app/components/dua.dart';
// import 'package:fyp/app/screens/thirdscreen.dart';

// import 'package:fyp/app/components/level.dart';
// import 'package:fyp/app/screens/home.dart';

// void main(){
//   runApp(const FourthScreen());
// }
// class FourthScreen extends StatefulWidget {
//   const FourthScreen({super.key});

//   @override
//   State<FourthScreen> createState() => _FourthScreenState();
// }

// class _FourthScreenState extends State<FourthScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// appBar: MyAppBar(
//   // title: 'B Islamic',

//     // onleadingtap: () {
//     //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//     // },
//     actions:  [

//      IconButton(onPressed: (){
//       Navigator.push(context, MaterialPageRoute(builder: (context)=>const FourthScreen()));
//      }, icon:const Icon(Icons.dehaze_rounded),iconSize: 38,)
//     ],

// ),
// body: Column(children: const [

//   Expanded(child: Center(child: DuaScreen(
//   title: 'Dua Before Meal',
//   assetImagePath: 'assets/images/before.jpg',
//   assetImagePath2: 'assets/images/dua1.jpg',
//   text: '"In  the name of Allah and with the blessings of Allah I begin(eating)"',)
//   ))

// ],),

//  bottomNavigationBar:IconButton(onPressed: (){
// Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//           }, icon: const Icon(Icons.home_rounded),iconSize: 44,color: Colors.deepOrange,),
//     );
//  }
// }
import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/dua_screen_widget.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/screens/Dua/dua_main_screen/level1mainScreen.dart';
import 'package:fyp/audio_path.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: MyAppBar(
          onleadingtap: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => const Level1mainScreen()));
          },
          actions: const []),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: DuaScreen(
                assetImagePath: 'assets/images/sneezing1.1.jpg',
                iconData: Homeicon(),
                path: AudioPaths.sneezing,
              ),
            ),
            // SizedBox(height: 20),
            // ImageOverlayContainer(
            //   assetImagePath: 'assets/images/i',
            //   iconData: Icons.camera,
            //   containerHeight: 150.0,
            //   iconSize: 32.0,
            // ),
          ],
        ),
      ),
    ));
  }
}
