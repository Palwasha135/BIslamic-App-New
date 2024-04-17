import 'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/screens/home.dart';
import 'package:url_launcher/url_launcher_string.dart';

final emails = ['bislamicapp@gmail.com'];

class Email extends StatelessWidget {
  Email({super.key});
  String emailString = 'mailto:${emails.join(',')}';
  Future<void> _launchEmail() async {
    if (await launchUrlString(emailString)) {
      throw Exception('Could not launch $emails');
    }
  }

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              const Text(
                'We Are Here For You',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 161, 225, 255)),
              ),
              Container(
                margin: const EdgeInsets.all(17),
                // height: 200,
                decoration: BoxDecoration(
                    color: Colors.lightBlue[100],
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Text(
                    ' Hello,Friends! If you have any questions or thoughts to share, please feel free to reach out. We`re here and happy to assist. ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _launchEmail,
                child: const Text(
                  'Send Email',
                  style: TextStyle(fontSize: 13, color: Colors.black87),
                ),
              ),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: const Homeicon(),
    );
  }
}
