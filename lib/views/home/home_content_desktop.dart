import 'package:flutter/material.dart';
import '../../widgets/call_to_action/call_to_action.dart';
import '../../widgets/program_details/program_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProgramDetails(),
        Expanded(
          child: Center(
            child: CallToAction('Join Today!'),
          ),
        ),
      ],
    );
  }
}
