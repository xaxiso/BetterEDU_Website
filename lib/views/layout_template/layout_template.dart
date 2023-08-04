import 'package:flutter/material.dart';
import 'package:plswork/services/navigation_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:plswork/widgets/call_to_action/call_to_action.dart';
import 'package:plswork/widgets/centered_view/centered_view.dart';
import 'package:plswork/widgets/navigation_bar/navigation_bar.dart';
import 'package:plswork/widgets/program_details/program_details.dart';
import '../../locator.dart';
import '../../routing/route_names.dart';
import '../../routing/router.dart';
import '../../widgets/navigation_drawer/drawer_item.dart';
import '../../widgets/navigation_drawer/navigation_drawer_header.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? Container( //this container is supposed to be in navigation_drawer.dart but for some reason it doesnt work on import
          width: 300,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 16
                )
              ]
          ),
          child: const Column(
              children: [
                NavigationDrawerHeader(),
                DrawerItem('Sponsors', Icons.videocam, SponsorsRoute),
                DrawerItem('About', Icons.help, AboutRoute)
              ]
          ),
        )
            : null,
        backgroundColor: Colors.black,
        body: CenteredView(
          child: Column(
            children: [
              NavBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
