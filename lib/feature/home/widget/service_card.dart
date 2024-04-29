import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';

class ServiceCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String timeToServe;
  final String price;

  const ServiceCardWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.timeToServe,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/service");
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10.0),
        width: 170.0,
        height: 200,
        decoration: BoxDecoration(
          color: MeTimeColors.whiteSecondary,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 170,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        size: 16,
                        color: MeTimeColors.stroke,
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        timeToServe,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .merge(const TextStyle(
                            fontSize: 16, color: MeTimeColors.stroke)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Text(price),
                ],
              ),
            ),
          ],
        ),
      ),
    )
    ;
  }
}
