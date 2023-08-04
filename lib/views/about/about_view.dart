import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 40
        ),
        Container(
          padding: EdgeInsets.all(30.0),
          child: Text(
            'Mental Health Care Should be available to everyone 24/7.\nWe value the work of peers as much as professionals.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 40
            )
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        SizedBox(
          height: 400,
          width: 600,
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
