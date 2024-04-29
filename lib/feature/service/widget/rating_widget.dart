import 'package:flutter/material.dart';

import 'rating_row_widget.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Customer reviews', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        Text('4.8 out of 5',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .merge(const TextStyle(fontSize: 16))),
        const SizedBox(height: 10),
        Text('27 global ratings',
            style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 20),
        const RatingsRow(yellowStars: 5, percentage: 70),
        const RatingsRow(yellowStars: 4, percentage: 15),
        const RatingsRow(yellowStars: 3, percentage: 10),
        const RatingsRow(yellowStars: 2, percentage: 5),
        const RatingsRow(yellowStars: 1, percentage: 0),
        const SizedBox(height: 20),
      ],
    );
  }
}
