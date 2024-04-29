import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/constants/metime_colors.dart';

class ApprovalBookingScreen extends StatelessWidget {
  const ApprovalBookingScreen({super.key});

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/Heart.png'),
          ),
          const SizedBox(height: 50),
          RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Thank you for booking \nwith ',
                style: TextStyle(fontSize: 24, color: MeTimeColors.blackSecondary),
                children: <TextSpan>[
                  TextSpan(
                    text: 'MeTime',
                    style: TextStyle(fontSize: 24, color: MeTimeColors.blackPrimary, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          const SizedBox(height: 80),
          const Text('Your booking details:', style: TextStyle(fontSize: 18, color: MeTimeColors.blackTernary)),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tuesday, 19', style: TextStyle(fontSize: 18, color: MeTimeColors.blackSecondary)),
              SizedBox(width: 20),
              Text('04:30 pm', style: TextStyle(fontSize: 18, color: MeTimeColors.blackSecondary)),
            ],
          ),
          const SizedBox(height: 10),
          const Text('At The Gallery Salon', style: TextStyle(fontSize: 18, color: MeTimeColors.blackTernary)),
          const SizedBox(height: 10),
          const Text('8502 Preston Rd. Inglewood', style: TextStyle(fontSize: 18, color: MeTimeColors.blackSecondary, decoration: TextDecoration.underline)),
          const SizedBox(height: 100),
          MeTimeButton(
              text: "Keep booking",
              primary: true,
              width: 270,
              height: 55,
              onPressed: () {
                Navigator.pushNamed(context, "/booking/checkout");
              }),
          const SizedBox(height: 10),
          MeTimeButton(
            text: "Main page",
            secondary: true,
            width: 270,
            height: 55,
            onPressed: () {
              Navigator.pushNamed(context, "/main");
            },
          ),
        ],
      ),
    );
  }
}
