import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import 'navbar_logo.dart';
import 'navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NavBarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                NavBarItem('About'),
                SizedBox(
                  width: 60,
                ),
                NavBarItem('Programs'),
                SizedBox(
                  width: 60,
                ),
                NavBarItem('Information'),
                SizedBox(
                  width: 60,
                ),
                NavBarItem('Resources'),
                SizedBox(
                  width: 60,
                ),
                NavBarItem('Donate'),
              ],
            ),
          ],
        ),
    );
  }
}
