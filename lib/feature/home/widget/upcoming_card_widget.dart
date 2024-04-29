import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/constants/metime_colors.dart';

class UpcomingCardWidget extends StatelessWidget {
  final String month;
  final String date;
  final String title;
  final String subTitle;
  final String time;

  const UpcomingCardWidget({
    super.key,
    required this.date,
    required this.title,
    required this.subTitle,
    required this.time,
    required this.month,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: MeTimeColors.whiteSecondary,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildDateSquare(date, month),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                subTitle,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .merge(const TextStyle(color: MeTimeColors.blackTernary)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(time,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .merge(const TextStyle(fontWeight: FontWeight.w700))),
            ],
          ),
          MeTimeButton(
            onPressed: () {},
            secondary: true,
            backgroundColor: MeTimeColors.whiteSecondary,
            textColor: MeTimeColors.blackPrimary,
            child: Text("Edit",
                style: Theme.of(context).textTheme.labelLarge!.merge(
                    const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 15))),
          )
        ],
      ),
    );
  }

  Widget _buildDateSquare(String date, String month) {
    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: MeTimeColors.pinkPrimary,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            month,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
