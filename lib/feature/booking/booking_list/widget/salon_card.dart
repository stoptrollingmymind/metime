
import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/constants/metime_colors.dart';
import 'package:metime/feature/booking/booking_list/widget/cancel_dialog.dart';

class SalonCard extends StatelessWidget {
  final String salonName;
  final String professionalName;
  final double distance;
  final Map<String, int> services;
  final String bookingDate;
  final double price;
  final bool isUpcoming;

  SalonCard({super.key,
    required this.salonName,
    required this.professionalName,
    required this.distance,
    required this.services,
    required this.bookingDate,
    required this.price,
    this.isUpcoming = false,
  });

  @override
  Widget build(BuildContext context) {
    const dotSign = "\u2022";

    return SizedBox(
      width: 380,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  salonName,
                  style: const TextStyle(
                    fontSize: 16,
                    color: MeTimeColors.blackSecondary,
                  ),
                ),
                Text(
                  'with $professionalName $dotSign $distance Kms',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  services.entries
                      .map((entry) => '${entry.key} ${entry.value} X')
                      .join(' $dotSign '),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  '$bookingDate $dotSign \$${price.toInt()}',
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
          ),
          if (isUpcoming)
            MeTimeButton(
              onPressed: () {
                showDialog(
                    barrierColor: null,
                    context: context,
                    builder: (BuildContext context) {
                      return const CancelAppointmentDialog();
                    });
              },
              width: 80,
              textSize: 16,
              text: "Cancel",
              textColor: MeTimeColors.danger,
              secondary: true,
            )
        ],
      ),
    );
  }
}
