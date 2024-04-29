import 'package:flutter/material.dart';

import 'serviceline_card_widget.dart';

class ServiceLineListWidget extends StatelessWidget {
  final VoidCallback? nextPage;

  const ServiceLineListWidget({super.key, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ServiceLineCardWidget(
              image: 'assets/BasicManicure.png',
              title: 'Basic Manicure',
              price: '\$30',
              onNextClicked: nextPage,
            ),
            ServiceLineCardWidget(
              image: 'assets/BasicPedicure.png',
              title: 'Basic Pedicure',
              price: '\$35',
              onNextClicked: nextPage,
            ),
            ServiceLineCardWidget(
                image: 'assets/GelManicure.png',
                title: 'Gel Manicure',
                price: '\$50',
                onNextClicked: nextPage),
            ServiceLineCardWidget(
                image: 'assets/GelPedicure.png',
                title: 'Gel Pedicure',
                price: '\$55',
                onNextClicked: nextPage),
            ServiceLineCardWidget(
                image: 'assets/AcrylicExtensions.png',
                title: 'Acrylic Extensions',
                price: '\$100',
                onNextClicked: nextPage),
          ],
        ),
      ),
    );
  }
}
