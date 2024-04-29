import 'package:flutter/material.dart';
import 'package:metime/components/avatar.dart';
import 'package:metime/components/stars_widget.dart';

class ProfessionalCardWidget extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final double stars;
  final VoidCallback? nextPage;

  const ProfessionalCardWidget({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.stars,
    this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth * 0.2;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/booking/professional/");
      },
      child: SizedBox(
        width: cardWidth,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 20),
              MeTimeAvatar(image: image),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StarsWidget(stars: stars),
                ],
              ),
              const SizedBox(width: 30),
            ],
          ),
        ),
      ),
    );
  }
}
