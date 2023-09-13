import 'package:flutter/material.dart';
import 'package:plswork/constants/app_colors.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Container(
          child: Text(
              'Resources',
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
          child: Text(
              'Here might be some resources you can take advantage of right now!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 25,
              )
          ),
          padding: EdgeInsets.all(30.0),
        ),

      ],
    );
  }
}