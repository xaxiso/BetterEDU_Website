import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../constants/app_colors.dart';

class ProgramDetails extends StatelessWidget {
  const ProgramDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder:(context, sizingInformation){
        var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left : TextAlign.center;
        double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 25 : 50;
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16 : 21;

        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BetterEDU:\nPEER LED MENTAL HEALTH SERVICES FOR COLLEGE STUDENTS',
                style: TextStyle(
                  fontWeight: FontWeight.w800, height: 0.9, fontSize: titleSize, color: subColor,
                ),
                textAlign: textAlignment,
              ),
              // Text(
              //   'PEER LED MENTAL HEALTH SERVICES FOR COLLEGE STUDENTS',
              //   style: TextStyle(
              //     fontWeight: FontWeight.w800, height: 0.9, fontSize: titleSize
              //   ),
              //   textAlign: textAlignment,
              // ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Our Mission is to provide free & accessible mental health care to all University Students.  We also want to offer premium services to include coaching, peer support, closed groups, and mental health assessments.',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.7,
                  color: Colors.white,
                ),
                textAlign: textAlignment,
              )
            ],
          ),
        );
      },
    );
  }
}
