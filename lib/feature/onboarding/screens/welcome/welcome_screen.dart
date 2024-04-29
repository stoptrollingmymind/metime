import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/constants/metime_colors.dart';

import 'background_widget.dart';

class WelcomeScreen extends StatelessWidget {
  final VoidCallback? nextPage;
  const WelcomeScreen({super.key, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const OnboardingCompositeBackground(),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Text(
                  'Welcome to \nThe Gallery Salon',
                  style: Theme.of(context).textTheme.displayLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  'Follow the steps to schedule your\n next appointment with us.',
                  style: Theme.of(context).textTheme.displaySmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MeTimeButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/auth");
                },
                text: "Skip",
                secondary: true,
                width: 150,
                height: 55,
              ),
              MeTimeButton(
                onPressed: () {
                  nextPage!();
                },
                text: "Start",
                primary: true,
                width: 150,
                height: 55,
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        ],
      ),
    );
  }
}
