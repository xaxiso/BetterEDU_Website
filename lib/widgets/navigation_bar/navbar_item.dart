import 'package:flutter/material.dart';
import 'package:plswork/services/navigation_service.dart';

import '../../locator.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    // Navigator.of(context).pushNamed('episodes')
    return GestureDetector(
      onTap: (){
        locator<NavigationService>().navigateTo(navigationPath);
    } ,
      child: Text(title,
        style: TextStyle(
            fontSize: 20,
            color: Colors.white
        ),
      ),
    );
  }
}