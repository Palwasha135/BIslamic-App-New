import 'package:flutter/material.dart';
//                                    theme coding
// import 'package:fyp/app/components/change_theme_button_widget.dart';
// import 'package:fyp/app/screens/mode.dart';

import 'package:fyp/app/constant.dart';

import 'package:fyp/app/screens/more_vert_icon/about.dart';
import 'package:fyp/app/screens/more_vert_icon/email.dart';
import 'package:fyp/app/screens/more_vert_icon/parentalguide.dart';
import 'package:fyp/search_dua.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  final IconButton? leading;
  final bool showsearch;
  final bool showtitle;
  //final  String leadingImage;
// final VoidCallback onPressed;
//final String title;
  final VoidCallback onleadingtap;
  final List<Widget> actions;

  const MyAppBar({
    Key? key,
    required this.onleadingtap,
    this.leading,
    this.showsearch = false,
    this.showtitle = false,
    //required this.title,
//  required this.onPressed,
    required this.actions,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(70);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: showtitle ? const Text('Search Duas') : null,
      centerTitle: true,
      backgroundColor: kbgcolor,
      leading: IconButton(
        onPressed: onleadingtap,
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          size: 25,
        ),
        color: Colors.white,
      ),
      actions: [
        //                              theme coding

        //const ChangeThemeButtonWidget(),

        Visibility(
          visible: showsearch,
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ),
        PopupMenuButton(
          iconColor: Colors.white,
          color: Colors.white,
          itemBuilder: (BuildContext context) {
            return const [
              PopupMenuItem(
                value: 1,
                child: Text('About'),
              ),
              PopupMenuItem(
                value: 2,
                child: Text('Parental Guide'),
              ),
              PopupMenuItem(
                value: 3,
                child: Text('Contact Us'),
              ),
            ];
          },
          onSelected: (value) {
            if (value == 1) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                  (route) => route.isFirst);
            } else if (value == 2) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Parentsguide()),
                  (route) => route.isFirst);
            } else {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Email()),
                  (route) => route.isFirst);
            }
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
