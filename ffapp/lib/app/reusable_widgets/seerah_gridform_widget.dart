import 'package:flutter/material.dart';

class SeerahGridformScreen extends StatelessWidget {
  final String imagepath;
  final VoidCallback onPress;
  const SeerahGridformScreen({
     Key? key,
    required this.imagepath,
    required this.onPress,
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Image.asset(imagepath));
  }
}