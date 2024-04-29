import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';

class ServiceLineCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final VoidCallback? onNextClicked;

  const ServiceLineCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    this.onNextClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 100,
            child: Image.asset(image),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 5),
                Text(
                  price,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: onNextClicked,
          ),
        ],
      ),
    );
  }
}

