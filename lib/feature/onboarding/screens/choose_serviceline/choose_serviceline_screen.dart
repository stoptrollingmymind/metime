
import 'package:flutter/material.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/feature/onboarding/widget/onboarding.dart';

import 'widget/serviceline_list_widget.dart';

class ChooseServiceLineScreen extends StatelessWidget {
  final VoidCallback? nextPage;
  const ChooseServiceLineScreen({super.key, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Now, choose one \nthat fit your needs:',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 20),
          ServiceLineListWidget(nextPage: nextPage)
        ],
      ),
    );
  }
}
