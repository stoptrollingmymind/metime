
import 'package:flutter/material.dart';

class ServiceTileWidget extends StatelessWidget {
  final VoidCallback? nextPage;
  final String image;
  final String title;

  const ServiceTileWidget({super.key, required this.image, required this.title, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        nextPage!();
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image),
          ),
          Positioned(
            bottom: 10,
            child: Text(title, style: Theme.of(context).textTheme.labelLarge),
          ),
        ],
      ),
    );
  }
}