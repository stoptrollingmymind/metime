import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/feature/booking/professional_detail/widget/date_picker.dart';

import 'widget/professional_detail.dart';
import 'widget/time_picker.dart';

class ProfessionalBookingScreen extends StatelessWidget {
  const ProfessionalBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const data = [
      ('10:00 am', "1", "Anna"),
      ('11:00 am', "2", "Anna"),
      ('02:00 pm', "3", "Anna"),
      ('03:00 pm', "4", "Anna"),
      ('05:00 pm', "5", "Anna"),
      ('08:00 pm', "6", "Anna"),
    ];

    return Scaffold(
        appBar: AppBar(
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
            const ProfessionalDetailWidget(
                fullName: "Anna Smith",
                description: "Nail Designer",
                stars: 5.0,
                image: "assets/AnnSmith.png"),
            const SizedBox(height: 40),
            const Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 25),
                Text('Select date & time',
                    style: Theme.of(context).textTheme.displayMedium),
                const SizedBox(height: 25),
                const DatePickerWidget(),
                const SizedBox(height: 50),
                const TimePickerWidget(
                  data: data,
                  forSameProfessional: true,
                ),
                const SizedBox(height: 10),
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
