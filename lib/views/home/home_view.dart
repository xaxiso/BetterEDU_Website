import 'package:flutter/material.dart';
import 'package:plswork/views/home/home_content_desktop.dart';
import 'package:plswork/views/home/home_content_mobile.dart';

import 'package:responsive_builder/responsive_builder.dart';
import '../../widgets/navigation_drawer/drawer_item.dart';
import '../../widgets/navigation_drawer/navigation_drawer_header.dart';
import 'home_content_desktop.dart';
import 'home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:plswork/widgets/navigation_drawer/navigation_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: HomeContentMobile(),
        desktop: HomeContentDesktop(),
    );
  }
}