import 'package:flutter/cupertino.dart';
import 'package:metime/constants/metime_colors.dart';


class OnboardingWidget extends StatelessWidget {
  final int currentIndex;
  final int totalPages;

  const OnboardingWidget({super.key, required this.currentIndex, required this.totalPages});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: index == currentIndex ? 50 : 10,
          height: 10,
          decoration: BoxDecoration(
            color: index == currentIndex ? MeTimeColors.pinkPrimary : MeTimeColors.inactive,
            borderRadius: BorderRadius.circular(20),
          ),
        );
      }),
    );
  }
}