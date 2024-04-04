import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/reusable_widgets/pillar_widget.dart';
import 'package:fyp/app/screens/pillarofIslam/Fasting.dart';
import 'package:fyp/app/screens/pillarofIslam/Hajj.dart';
import 'package:fyp/app/screens/pillarofIslam/Salah.dart';
import 'package:fyp/app/screens/pillarofIslam/Tauheed.dart';
import 'package:fyp/app/screens/pillarofIslam/Zakat.dart';
import 'package:fyp/app/screens/home.dart';

// void main()
// {

//   runApp(const PP());
// }
class PP extends StatelessWidget {
  const PP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
          Navigator.pop(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 59.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Tauheedscreen()));
                    },
                    child: const Pillar(
                      // onTap: () {
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>PP()));
                      // },
                      fcontainerclr: Colors.brown,
                      firstheight: 130,
                      firstwidth: 100,
                      scontainerclr: Colors.white,
                      secondheight: 100,
                      secondwidth: 70,
                      tcontainerclr: Colors.green,
                      tecondheight: 55,
                      tecondwidth: 55,
                      imagepath: 'assets/images/Tauheed.png',
                      text: 'Kalma',
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Salahscreen()));
                    },
                    child: const Pillar(
                      // onTap: () {
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>PP()));
                      // },
                      fcontainerclr: Colors.brown,
                      firstheight: 130,
                      firstwidth: 100,
                      scontainerclr: Colors.white,
                      secondheight: 100,
                      secondwidth: 70,
                      tcontainerclr: Colors.green,
                      tecondheight: 55,
                      tecondwidth: 55,
                      imagepath: 'assets/images/Salah.png',
                      text: 'Salah',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Zakatscreen()));
                    },
                    child: const Pillar(
                      // onTap: () {
                      //         Navigator.push(context, MaterialPageRoute(builder: (context)=>PP()));
                      //       },
                      fcontainerclr: Colors.grey,
                      firstheight: 130,
                      firstwidth: 100,
                      scontainerclr: Colors.white,
                      secondheight: 100,
                      secondwidth: 70,
                      tcontainerclr: Colors.green,
                      tecondheight: 55,
                      tecondwidth: 55,
                      imagepath: 'assets/images/Zakat.png',
                      text: 'Zakat',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Hajjscreen()));
                    },
                    child: const Pillar(
                      fcontainerclr: Colors.brown,
                      firstheight: 130,
                      firstwidth: 100,
                      scontainerclr: Colors.white,
                      secondheight: 100,
                      secondwidth: 70,
                      tcontainerclr: Colors.green,
                      tecondheight: 55,
                      tecondwidth: 55,
                      imagepath: 'assets/images/Hajj.png',
                      text: 'Hajj',
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Hajjscreen()));
                    },
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Fastingscreen()));
                      },
                      child: const Pillar(
                        // onTap: () {
                        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>PP()));
                        // },
                        fcontainerclr: Colors.brown,
                        firstheight: 130,
                        firstwidth: 100,
                        scontainerclr: Colors.white,
                        secondheight: 100,
                        secondwidth: 70,
                        tcontainerclr: Colors.green,
                        tecondheight: 55,
                        tecondwidth: 55,
                        imagepath: 'assets/images/Fasting.png',
                        text: 'Fasting',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Homeicon(onPressed: () {
        Navigator.pop(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      }),
    );
  }
}
