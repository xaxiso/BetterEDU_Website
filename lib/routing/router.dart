import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plswork/views/home/home_view.dart';
import 'package:plswork/routing/route_names.dart';

import '../views/about/about_view.dart';
import '../views/contact/contact_view.dart';
import '../views/donate/donate_view.dart';
import '../views/episodes/episodes_view.dart';
import '../views/sponsors/sponsors_view.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case SponsorsRoute:
      return _getPageRoute(SponsorsView());
    case ContactRoute:
      return _getPageRoute(ContactView());
    case DonateRoute:
      return _getPageRoute(DonateView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}