
import 'package:flutter/material.dart';
import 'package:metime/feature/booking/booking_list/fake_data.dart';
import 'package:metime/feature/booking/booking_list/widget/salon_card.dart';

class SalonListWidget extends StatelessWidget {
  final List<SalonCardModel> salonCards;

  SalonListWidget({required this.salonCards});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: salonCards.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SalonCard(
              salonName: salonCards[index].salonName,
              professionalName: salonCards[index].professionalName,
              distance: salonCards[index].distance,
              services: salonCards[index].services,
              bookingDate: salonCards[index].bookingDate,
              price: salonCards[index].price,
              isUpcoming: salonCards[index].isUpcoming,
            ),
            if (index != salonCards.length - 1) const Divider(),
          ],
        );
      },
    );
  }
}
