import 'package:flutter/material.dart';
import 'package:plswork/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../widgets/call_to_action/call_to_action.dart';
import '../../widgets/program_details/program_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ProgramDetails(),
        // Expanded(
          Center(
            child: ElevatedButton(
              onPressed: IOSurl,
              child: Text('Download (IOS)'),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  ),
                ),
            ),
          ),
        // ),
        // Expanded(
          Center(
            child: ElevatedButton(
              onPressed: IOSurl,
              child: Text('Download (Andriod)'),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                ),
                ),
              ),
            ),
          // ),
      ],
    );
  }
}

final Uri iosurl = Uri.parse('https://apps.apple.com/us/app/betteredu/id6452803578');
final Uri androidurl = Uri.parse('https://play.google.com/store/apps/details?id=com.BetterEDU.android&hl=en_US');


Future<void> IOSurl() async {
  if (!await launchUrl(iosurl)) {
    throw Exception('Could not launch $iosurl');
  }
}

Future<void> ANDROIDurl() async {
  if (!await launchUrl(androidurl)) {
    throw Exception('Could not launch $androidurl');
  }
}