import 'package:flutter/material.dart';

import 'professional_card_widget.dart';

class ProfessionalListWidget extends StatelessWidget {
  final VoidCallback? nextPage;
  const ProfessionalListWidget({super.key, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          ProfessionalCardWidget(
            image: 'assets/AnnSmith.png',
            name: 'Ann Smith',
            description: 'nail designer',
            stars: 5.0,
          ),
          ProfessionalCardWidget(
            image: 'assets/JordanMcmiller.png',
            name: 'Jordan Mcmiller',
            description: 'nail designer',
            stars: 4.9,
          ),
          ProfessionalCardWidget(
            image: '',
            name: 'Paty Sinclair',
            description: 'nail designer',
            stars: 4.9,
          ),
        ],
      ),
    );
  }
}
