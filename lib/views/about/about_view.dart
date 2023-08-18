import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class AboutView extends StatelessWidget {
  const AboutView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // SizedBox(
        //   height: 40
        // ),
        Container(
          child: Text(
              'About',
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
          padding: EdgeInsets.all(30.0),
          child: Text(
            'Mental Health Care Should be available to everyone 24/7.\nWe value the work of peers as much as professionals.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 30
            )
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        SizedBox(
          height: 300,
          width: 500,
          child: Image.asset('mentalHealth.jpg')
        )
      ],
    );
    // return Center(
    //   child: Text(
    //     'Mental Health Care Should be available to everyone 24/7\nWe value the work of peers as much as professionals',
    //     style: TextStyle(
    //       color: Colors.white,
    //       fontWeight: FontWeight.bold,
    //       fontSize: 40
    //     )
    //   ),
    // );
  }
}
