import 'package:flutter/material.dart';
import 'package:metime/components/avatar.dart';
import 'package:metime/components/stars_widget.dart';

class ProfessionalDetailWidget extends StatelessWidget {
  final String fullName;
  final String description;
  final double stars;
  final String image;

  const ProfessionalDetailWidget({
    super.key,
    required this.fullName,
    required this.description,
    required this.stars, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MeTimeAvatar(image: image),
        const SizedBox(height: 10),
        Text(
          'Anna Smith',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          'Nail Designer',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        StarsWidget(stars: stars, mainAxisAlignment: MainAxisAlignment.center,),
      ],
    );
  }
}
