// ignore_for_file: deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
 import 'package:fyp/app/screens/home.dart';

final _lightTheme =ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(
    bodyText2: TextStyle(
      color: Colors.black,
    ),
  ),
);
final _darkTheme =ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(
    bodyText2: TextStyle(
      color: Colors.white,
    ),
  ),
);


class Mode extends StatefulWidget {
  const Mode({super.key});

  @override
  State<Mode> createState() => _ModeState();
}

class _ModeState extends State<Mode> {
  bool _switchValue =false;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: _switchValue ? _lightTheme :_darkTheme,
      //title:_switchValue ? 'light mode' : 'dark mode',
home: Scaffold(
  backgroundColor: _switchValue ? Colors.white : Colors.black,
  
  appBar:MyAppBar(onleadingtap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
    }, actions:const []),
  body:  Row(
    children: [
      
const Text('light mode'),
Switch(
  value: _switchValue, 
  onChanged: (newValue){
    setState(() {
      _switchValue =newValue;

    });
  } ),


  
    ],
  ),),


    );
  }
}