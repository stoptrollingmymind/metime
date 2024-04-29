import 'package:flutter/material.dart';
import 'package:metime/feature/onboarding/screens/choose_service/widget/service_tile_widget.dart';

class ServicesPaletteListWidget extends StatelessWidget {
  final VoidCallback? nextPage;
  const ServicesPaletteListWidget({super.key, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          children: [
            ServiceTileWidget(image: 'assets/Nails.png', title: 'Nails', nextPage: nextPage),
            ServiceTileWidget(image: 'assets/Eyebrows.png', title: 'Eyebrows', nextPage: nextPage),
            ServiceTileWidget(image: 'assets/Massage.png', title: 'Massage', nextPage: nextPage),
            ServiceTileWidget(image: 'assets/Hair.png', title: 'Hair', nextPage: nextPage),
          ],
        ),
      ],
    );
  }
}
