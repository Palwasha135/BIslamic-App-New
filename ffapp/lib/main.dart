// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fyp/app/constant.dart';
import 'package:fyp/app/provider/theme_provider.dart';
import 'package:fyp/app/screens/home.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  //static const String title = 'Light & Dark Theme';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  //                     ThemeCoding
  // => ChangeNotifierProvider(
  //       create: (context) => ThemeProvider(),
  //       builder: (context, _) {
  //         final themeProvider = Provider.of<ThemeProvider>(context);
  {
    return MaterialApp(
      title: 'B Islamic',
      //                             TC
      // themeMode: themeProvider.themeMode,
      // theme: MyThemes.lightTheme,
      // darkTheme: MyThemes.darkTheme,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(toolbarHeight: 200),
        scaffoldBackgroundColor: kbgcolor,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
  //);
  //}    

