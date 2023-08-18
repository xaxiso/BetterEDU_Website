import 'package:flutter/material.dart';

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
              'Donate',
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
            'Your donation supports original content that promotes queer and diverse voices. Any amount is helpful and greatly appreciated!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 35
            )
            ),
        ),
        SizedBox(
          height: 20,
        ),
        CallToAction('Donate Today!')
      ],
    );
  }
}
