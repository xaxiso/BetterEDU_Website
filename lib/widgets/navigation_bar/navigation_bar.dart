import 'package:flutter/material.dart';
import 'package:plswork/widgets/navigation_bar/navbar_item.dart';
import 'package:plswork/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navigation_bar_mobile.dart';

class NavBar extends StatelessWidget {
  const NavBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
