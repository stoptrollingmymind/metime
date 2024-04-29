import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/constants/metime_colors.dart';
import 'package:metime/feature/service/widget/coupon_card_widget.dart';

import 'widget/rating_widget.dart';
import 'widget/service_action_widget.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // <-- this
        shadowColor: Colors.transparent,
        forceMaterialTransparency: true,
        title: const MeTimeLogo(),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: MeTimeColors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/SalonAddress.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ServiceActionWidget(text: 'Call', icon: Icons.phone_outlined),
              ServiceActionWidget(
                  text: 'Message', icon: Icons.message_outlined),
              ServiceActionWidget(text: 'Directions', icon: Icons.directions),
              ServiceActionWidget(text: 'Share', icon: Icons.share_outlined),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(),
          const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CouponCardWidget(
                    saleText: '10% off', couponText: 'use code FREE10'),
                CouponCardWidget(
                    saleText: '30% off on Debit Card',
                    couponText: 'No coupon required'),
              ]),
          const Divider(),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: RatingWidget()),
          const Spacer(),
          MeTimeButton(
            onPressed: () {},
            text: "Write a review",
            width: 270,
            height: 65,
            textColor: MeTimeColors.blackPrimary,
            backgroundColor: MeTimeColors.white,
            borderColor: MeTimeColors.blackTernary,
            borderWidth: 1,
          ),
          const SizedBox(height: 60)
        ],
      ),
    );
  }
}
