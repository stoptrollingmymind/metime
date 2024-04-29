import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/constants/metime_colors.dart';

class CancelAppointmentDialog extends StatelessWidget {
  const CancelAppointmentDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: MeTimeColors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/DangerCrossSign.png'),
          const SizedBox(height: 16),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'Are you sure, you want to\n',
                ),
                TextSpan(
                  text: 'cancel',
                  style: TextStyle(
                    color: MeTimeColors.dangerSecondary,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' this appointment?',
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MeTimeButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: "No",
                width: 130,
                height: 55,
                backgroundColor: MeTimeColors.white,
                textColor: MeTimeColors.dangerSecondary,
                secondary: true,
              ),
              MeTimeButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                width: 130,
                height: 55,
                text: "Cancel",
                backgroundColor: MeTimeColors.dangerSecondary,
                primary: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}