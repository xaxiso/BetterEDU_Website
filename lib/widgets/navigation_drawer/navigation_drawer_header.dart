import 'package:flutter/material.dart';
import 'package:plswork/constants/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Find Assistance Today!',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white
            ),
          ),
          Text('TAP HERE',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ],
      )
    );
  }
}
