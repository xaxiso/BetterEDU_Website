import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: Image.asset('assets/logo.png'),
    );
  }
}
