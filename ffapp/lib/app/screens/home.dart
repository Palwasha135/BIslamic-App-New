// ignore_for_file: avoid_print, unused_local_variable
//         theme coding
//import 'package:fyp/app/provider/theme_provider.dart';
//         theme coding
//import 'package:fyp/app/screens/mode.dart';
//         theme coding
//import 'package:provider/provider.dart';
import 'package:fyp/app/screens/more_vert_icon/about.dart';
import 'package:fyp/app/screens/more_vert_icon/email.dart';
import 'package:fyp/app/screens/more_vert_icon/parentalguide.dart';
import 'package:fyp/app/screens/pillarofIslam/pillar_main_screen/pillar_screen.dart';
import 'package:fyp/app/screens/seerah/seerah_main_screen.dart';
import 'package:fyp/app/screens/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/home_screen_container.dart';
import 'package:fyp/app/constant.dart';

//import 'package:fyp/app/components/change_theme_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //         theme coding
    // final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
    //     ? 'DarkTheme'
    //     : 'LightTheme';
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: kbgcolor,
        leadingWidth: 133,
        leading: Image.asset('assets/images/leadinglogo.png'),
        actions: [
//                     theme coding

          //                   const ChangeThemeButtonWidget(),

          PopupMenuButton(
            color: Colors.white,
            iconColor: Colors.white,
            itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem(value: 1, child: Text('About')),
                PopupMenuItem(
                  value: 2,
                  child: Text('Parental Guide'),
                ),
                //         theme coding
                // PopupMenuItem(
                //   value:3,
                //   child: Text('theme'),

                PopupMenuItem(
                  value: 3,
                  child: Text('Contact Us'),
                ),
                //         theme coding
                // PopupMenuItem(
                //   value:3,
                //   child: Text('theme'),

                // )
              ];
            },
            onSelected: (value) {
              if (value == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const About()));
              } else if (value == 2) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Parentsguide()));
              } else {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Email()));
              }
            },
            //                Same as above
//    else if (value==2){
// Navigator.push(context, MaterialPageRoute(builder: (context)=>const Parentsguide()));
//    }

//    else{
//      value==3;
//    }
//    Navigator.push(context,MaterialPageRoute(builder: (context)=>const Mode()));
//       },
          )
        ],
      ),

      //                Same as above
//    else if (value==2){
// Navigator.push(context, MaterialPageRoute(builder: (context)=>const Parentsguide()));
//    }

//    else{
//      value==3;
//    }
//    Navigator.push(context,MaterialPageRoute(builder: (context)=>const Mode()));
//       },

      //         appBar:MyAppBar(
      //           //title: 'B Islamic',

      // // onleadingtap: () {
      // //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
      // // },
      // actions:  [

      //  IconButton(onPressed: (){
      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondScreen()));
      //  }, icon:const Icon(Icons.dehaze_outlined),iconSize: 38,)
      // ],),
      // AppBar(

      //     backgroundColor:kbgcolor,

      // actions: [
      //   IconButton(
      //     icon: const Icon(Icons.dehaze_outlined),
      //     color:Colors.white,
      //   iconSize: 45,
      //     onPressed:(){
      //      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondScreen()));
      //     }
      //     )
      //   ],
      //   leading:IconButton(icon: const Icon(Icons.dehaze_outlined),
      //   color: Colors.white,
      //   iconSize: 35,
      //   onPressed: () {
      //     print('tap2');
      //   }

      //   ),
      // title: const Center(child: Text('B Islamic', style: TextStyle(color: Colors.white, fontSize: 35),)),

      // //   child:ListView.builder(
      // //     itemCount: 1,
      // //     itemBuilder: ((context, index) {
      // //       return Container(
      // //         color: Colors.pinkAccent,
      // // //       child:const Padding(
      // // //         padding:  EdgeInsets.all(11),
      // //         child: Text(textAlign: TextAlign.center,'Pillar of Islam', style: TextStyle(color: Colors.white, fontSize: 23 ),),

      // //       );

      // //     }

      // //   ) ,
      //   )
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 39),
              Mybutton(
                title: 'Daily Duas',
                assetImagePath: 'assets/images/dua.png',
                //assetImagePath1: null,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondScreen()));
                },
                btnColor: Colors.cyanAccent,
              ),
              Mybutton(
                title: 'Seerat e Nabi (S.A.W.W)',
                assetImagePath: 'assets/images/Sunnah.png',
                //assetImagePath1: null,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SeerahMainScreen()));
                },
                btnColor: Colors.purple,
              ),
              Mybutton(
                title: 'Pillars of Islam',
                assetImagePath: 'assets/images/pillar.png',
                //assetImagePath1: '',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PP()));
                },
                btnColor: Colors.deepOrange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
