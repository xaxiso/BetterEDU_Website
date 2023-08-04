import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) async {
    return await navigatorKey.currentState?.pushNamed(routeName);
  }

  Future<dynamic> goBack() async {
    return navigatorKey.currentState?.pop();
  }
}
