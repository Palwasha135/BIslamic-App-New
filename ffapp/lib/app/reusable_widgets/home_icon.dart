import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:fyp/app/screens/home.dart';

class Homeicon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final Color iconcolor;
  const Homeicon({
    Key? key,
    this.icon = Icons.home,
    this.iconcolor = Colors.orange,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
        Navigator.popUntil(context, (route) => route.isFirst);
        //pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const HomeScreen()), (route) => route.isFirst
      },
      icon: Icon(
        icon,
        size: 33,
        color: iconcolor,
      ),
    );
  }
}
