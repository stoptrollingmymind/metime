import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';

class ServiceActionWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const ServiceActionWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: MeTimeColors.whiteSecondary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 25, color: MeTimeColors.blackSecondary),
              const SizedBox(height: 5),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Text(text, style: Theme.of(context).textTheme.labelLarge),
      ],
    );
  }
}