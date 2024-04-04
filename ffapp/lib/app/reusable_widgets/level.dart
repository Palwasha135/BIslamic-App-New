import 'package:flutter/material.dart';

class Levels extends StatelessWidget {
  final String title;
  final Color containercolor;
  final String image;
  final VoidCallback onPress;

  const Levels({
    Key? key,
    required this.title,
    required this.containercolor,
    required this.image,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13.0),
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              color: containercolor,
              //color: Colors.amberAccent,
              // image:const  DecorationImage(
              //   image: AssetImage('images/secondlvl.jpg'),
              //   ),
            ),
            // child: Center(
            child: Column(children: [
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image.asset(image, alignment: Alignment.center),
                  )),
              const SizedBox(
                height: 2,
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
