import 'package:flutter/material.dart';

class RatingsRow extends StatelessWidget {
  final int yellowStars;
  final int percentage;

  const RatingsRow(
      {super.key, required this.yellowStars, required this.percentage});

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = List.generate(5, (index) {
      if (index < yellowStars) {
        return const Icon(Icons.star, color: Colors.yellow);
      } else {
        return const Icon(Icons.star_border, color: Colors.grey);
      }
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(children: stars),
        const SizedBox(width: 10),
        Text('$percentage%'),
      ],
    );
  }
}