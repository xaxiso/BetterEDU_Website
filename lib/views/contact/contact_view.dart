import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/app_colors.dart';
import '../../widgets/call_to_action/call_to_action.dart';

class DonateView extends StatelessWidget {
  const DonateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Text(
              'Contact',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 45,
              )
          ),
          padding: EdgeInsets.all(15.0),
        ),
        Container(
          width: 15,
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: TextButton(
              onPressed: facebooklaunchUrl,
              child: Text(
                  'BetterEDU Facebook Page',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.white,
                  )
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: TextButton(
              onPressed: twitterlaunchUrl,
              child: Text(
                  'BetterEDU Twitter Page',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.white,
                  )
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: TextButton(
              onPressed: instagramlaunchUrl,
              child: Text(
                  'BetterEDU Instagram Page',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.white,
                  )
              ),
            ),
          ),
        ),
        Container(
          child: Text(
              'Reach us at:\nHeathersocialworker@gmail.com\nHeather@betteredu.app',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 24,
              )
          ),
          padding: EdgeInsets.all(30.0),
        )
      ],
    );
  }
}

final Uri facebookurl = Uri.parse('https://www.facebook.com/profile.php?id=100094206371226 ');
final Uri twitterurl = Uri.parse('https://https://twitter.com/BetterEDU1?s=20.dev');
final Uri instagramurl = Uri.parse('https://www.instagram.com/betteredu1/');


Future<void> facebooklaunchUrl() async {
  if (!await launchUrl(facebookurl)) {
    throw Exception('Could not launch $facebookurl');
  }
}

Future<void> twitterlaunchUrl() async {
  if (!await launchUrl(twitterurl)) {
    throw Exception('Could not launch $twitterurl');
  }
}

Future<void> instagramlaunchUrl() async {
  if (!await launchUrl(instagramurl)) {
    throw Exception('Could not launch $instagramurl');
  }
}