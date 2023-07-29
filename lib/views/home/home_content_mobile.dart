import 'package:flutter/material.dart';
import 'package:plswork/widgets/call_to_action/call_to_action.dart';
import 'package:plswork/widgets/program_details/program_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProgramDetails(),
        SizedBox(height: 100),
        CallToAction('Join Today!')
      ],
    );
  }
}
