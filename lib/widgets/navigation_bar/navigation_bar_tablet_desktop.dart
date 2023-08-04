import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../routing/route_names.dart';
import 'navbar_logo.dart';
import 'navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NavBarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                NavBarItem('Home', HomeRoute),
                SizedBox(
                  width: 60,
                ),
                NavBarItem('About', AboutRoute),
                SizedBox(
                  width: 60,
                ),
                NavBarItem('Sponsors', SponsorsRoute),
                SizedBox(
                  width: 60,
                ),
                NavBarItem('Contact', ContactRoute),
                SizedBox(
                  width: 60,
                ),
                NavBarItem('Donate', DonateRoute),
                SizedBox(
                  width: 60,
                ),
              ],
            ),
          ],
        ),
    );
  }
}
