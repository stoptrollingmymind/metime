import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/feature/onboarding/screens/choose_professional/widget/professional_list_widget.dart';

class ChooseProfessionalScreen extends StatelessWidget {
  final VoidCallback? nextPage;

  const ChooseProfessionalScreen({super.key, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 50),
          Text(
            'Choose a professional to see\n the slots available:',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 20),
          const ProfessionalListWidget(),
          const SizedBox(height: 20),
          MeTimeButton(
            onPressed: () {
              Navigator.pushNamed(context, "/booking/professional/unspecified");
            },
            text: "I don't have a preference",
            secondary: true,
            useItalic: true,
            width: 150,
            height: 55,
          ),
          const SizedBox(height: 85),
        ],
      ),
    );
  }
}
