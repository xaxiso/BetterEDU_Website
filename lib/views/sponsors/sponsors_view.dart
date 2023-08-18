import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class SponsorsView extends StatelessWidget {
  const SponsorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Text(
              'Sponsors',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 45,
              )
          ),
          padding: EdgeInsets.all(15.0),
        ),
      ],
    );
  }
}
