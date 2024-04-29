import 'package:flutter/material.dart';

class OnboardingCompositeBackground extends StatelessWidget {
  const OnboardingCompositeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/BackgroundShape.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/RelaxWoman.png',
            ),
          ),
        ],
      ),
    );
  }
}