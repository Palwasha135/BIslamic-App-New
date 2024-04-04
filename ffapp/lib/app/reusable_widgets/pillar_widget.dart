import 'package:flutter/material.dart';

class Pillar extends StatelessWidget {
  final String imagepath, text;
  final Color fcontainerclr;
  final double firstheight;
  final double firstwidth;
  final Color scontainerclr;
  final double secondheight;
  final double secondwidth;
  final Color tcontainerclr;
  final double tecondheight;
  final double tecondwidth;
  //final VoidCallback onTap;

  const Pillar({
    Key? key,
    required this.fcontainerclr,
    required this.firstheight,
    required this.firstwidth,
    required this.scontainerclr,
    required this.secondheight,
    required this.secondwidth,
    required this.imagepath,
    required this.text,
    required this.tcontainerclr,
    required this.tecondheight,
    required this.tecondwidth,
    //required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        // onTap: (){
        //   print('calling');
        // },
        child: Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        // Positioned(
        //   top:120,
        //   left:50,
        //   child:
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: fcontainerclr,
          ),
          height: firstheight,
          width: firstwidth,
        ),
        // ),
        // Positioned(
        //   top:130,
        //   left:65,
        //   //bottom: 420,
        //   child:
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: scontainerclr,
              boxShadow: const [
                BoxShadow(
                  color: Colors.orangeAccent,
                  blurRadius: 7,
                  spreadRadius: 11.0,
                  offset: Offset(0.5, 0.5),
                ),
              ]),
          height: secondheight,
          width: secondwidth,
          child: Image(
            image: AssetImage(imagepath),
          ),
        ),
        Positioned(
            top: -27,
            left: 23,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(73),
                color: tcontainerclr,
              ),
              height: tecondheight,
              width: tecondwidth,
              child: Center(
                child: Text(text,
                    style: TextStyle(fontSize: 13, color: Colors.white)),
              ),
            )),
      ],
    ));
  }
}
