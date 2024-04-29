import 'package:flutter/material.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/feature/booking/booking_list/widget/salon_list.dart';

import 'fake_data.dart';

class BookingListScreen extends StatelessWidget {
  const BookingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: DefaultTabController(
          length: 2,
          child: Center(
            child: SizedBox(
              width: 380,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Text(
                      'Your Bookings',
                      style: Theme
                          .of(context)
                          .textTheme
                          .displayMedium,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(text: 'Past'),
                      Tab(text: 'Upcoming'),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Center(
                            child: SalonListWidget(
                                salonCards: BookingData.fakePastData)),
                        Center(
                            child: SalonListWidget(
                                salonCards: BookingData.fakeUpcomingData)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
