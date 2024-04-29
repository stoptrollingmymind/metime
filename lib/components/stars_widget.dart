import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  final double stars;
  final MainAxisAlignment? mainAxisAlignment;

  const StarsWidget(
      {super.key, required this.stars, this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const SizedBox(width: 5),
        Text(stars.toString(), style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
