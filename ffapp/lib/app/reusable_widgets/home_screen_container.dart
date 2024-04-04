import 'package:flutter/material.dart';

//import '../constant.dart';

class Mybutton extends StatelessWidget {
  final String title;
  final Color btnColor;
  final String assetImagePath;
  //final  String? assetImagePath1;
  final VoidCallback onPress;

//  final ImageProvider image;
  const Mybutton({
    Key? key,
    required this.title,
    required this.btnColor,
    required this.assetImagePath,
    //required this.assetImagePath1,

    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 100,
          width: 370,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: btnColor,
          ),
          child: Row(
            children: [
              Image.asset(assetImagePath,
                  fit: BoxFit.fitHeight, alignment: Alignment.centerLeft),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: LayoutBuilder(builder: (context, constraints) {
                  return Text(
                    title,
                    style: TextStyle(
                        fontSize: constraints.maxHeight * 0.3,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  );
                }),
              ),
              //Image.asset(alignment: Alignment.centerRight,)
              // Image.asset('images/pillarend.jpg'
              //,alignment: Alignment.centerRight,)
            ],
          ),
        ),
      ),
    );
  }
}
