import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/feature/auth/auth/auth_draggable_screen.dart';
import 'package:metime/feature/onboarding/screens/choose_service/widget/service_palette_list_widget.dart';

class ChooseServiceScreen extends StatelessWidget {
  final VoidCallback? nextPage;

  const ChooseServiceScreen({super.key, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Please, choose a service:',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 50),
          ServicesPaletteListWidget(nextPage: nextPage),
          const SizedBox(height: 15),
          MeTimeButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const AuthDraggableHeaderWidget();
                },
              );
            },
            text: "Skip",
            secondary: true,
            useItalic: true,
            width: 150,
            height: 55,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
