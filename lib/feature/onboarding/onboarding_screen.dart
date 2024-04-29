import 'package:flutter/material.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/constants/metime_colors.dart';
import 'package:metime/feature/onboarding/screens/choose_professional/choose_professional_screen.dart';
import 'package:metime/feature/onboarding/screens/choose_service/choose_service_screen.dart';
import 'package:metime/feature/onboarding/screens/choose_serviceline/choose_serviceline_screen.dart';
import 'package:metime/feature/onboarding/screens/welcome/welcome_screen.dart';
import 'package:onboarding/onboarding.dart';

import 'widget/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late VoidCallback nextPage;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MeTimeLogo(),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Onboarding(
        swipeableBody: [
          WelcomeScreen(nextPage: nextPage),
          ChooseServiceScreen(nextPage: nextPage),
          ChooseServiceLineScreen(nextPage: nextPage),
          ChooseProfessionalScreen(nextPage: nextPage),
        ],
        startIndex: 0,
        onPageChanges:
            (netDragDistance, pagesLength, currentIndex, slideDirection) {

            },
        buildHeader: (context, netDragDistance, pagesLength, currentIndex,
            setIndex, slideDirection) {
          nextPage = () {
            setIndex(++this.currentIndex);
          };

          return Container(
            color: MeTimeColors.white,
            child: Column(
              children: [
                OnboardingWidget(currentIndex: currentIndex, totalPages: 4),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
        animationInMilliseconds: 100,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    nextPage = () {

    };
  }
}
