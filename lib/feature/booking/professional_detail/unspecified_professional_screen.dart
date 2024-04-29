import 'package:flutter/material.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/constants/metime_colors.dart';
import 'package:metime/feature/booking/professional_detail/widget/date_picker.dart';
import 'package:metime/feature/booking/professional_detail/widget/time_picker.dart';

import '../../../components/button.dart';
import 'widget/professional_detail.dart';

class UnspecifiedProfessionalBookingScreen extends StatelessWidget {
  const UnspecifiedProfessionalBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const data = [
      ('10:30 am', "1", "Anna"),
      ('11:20 am', "2", "Pit"),
      ('02:00 pm', "3", "Jordan"),
      ('03:50 pm', "4", "Jordan"),
      ('05:00 pm', "5", "Nill"),
      ('08:00 pm', "6", "Kiggers"),
    ];

    return Scaffold(
        appBar: AppBar(
          title: const MeTimeLogo(),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
              text: 'Select a date to see the \n',
              style: TextStyle(fontSize: 24, color: MeTimeColors.blackSecondary),
              children: <TextSpan>[
                TextSpan(
                  text: 'next ',
                  style: TextStyle(color: MeTimeColors.pinkPrimary),
                ),
                TextSpan(
                  text: 'slot available for you',
                )
              ],
            )),
            const SizedBox(height: 40),
            const Divider(),
            const SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const SizedBox(width: 40),
                  RichText(
                    text: const TextSpan(
                      text: 'October ',
                      style:
                          TextStyle(fontSize: 24, color: MeTimeColors.stroke),
                      children: <TextSpan>[
                        TextSpan(
                          text: '2023',
                          style: TextStyle(color: MeTimeColors.pinkPrimary),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Column(
                    children: [
                      SizedBox(height: 6),
                      Icon(Icons.arrow_forward_ios_sharp,
                          color: MeTimeColors.stroke, size: 16),
                    ],
                  )
                ]),
                const SizedBox(height: 45),
                const DatePickerWidget(),
                const SizedBox(height: 15),
                const TimePickerWidget(data: data, forSameProfessional: false),
                const SizedBox(height: 30),
                MeTimeButton(
                    width: 270,
                    height: 60,
                    primary: true,
                    onPressed: () {
                      Navigator.pushNamed(context, "/booking/approve");
                    },
                    child: const Text("Book")),
              ],
            ),
          ],
        ));
  }
}
