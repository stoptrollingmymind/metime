import 'package:flutter/material.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/components/tag.dart';
import 'package:metime/constants/metime_colors.dart';

import 'widget/ads_card_widget.dart';
import 'widget/service_card.dart';
import 'widget/upcoming_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Navigator.of(context).pushNamed("/");
          },
        ),
        title: const MeTimeLogo(),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        children: [
          RichText(
            text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.merge(const TextStyle(color: MeTimeColors.blackSecondary)),
              children: const [
                TextSpan(text: 'Hello, '),
                TextSpan(
                  text: 'Carol',
                  style: TextStyle(color: MeTimeColors.pinkPrimary),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          SearchBar(
            hintText: 'Search',
            elevation: MaterialStateProperty.resolveWith((states) => 0),
            shadowColor: MaterialStateProperty.resolveWith(
                (states) => Colors.transparent),
            shape: MaterialStateProperty.resolveWith(
              (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            leading: Row(
              children: [
                const SizedBox(width: 15),
                Image.asset("assets/Search.png"),
                const SizedBox(width: 10),
              ],
            ),
            backgroundColor: MaterialStateColor.resolveWith(
                (states) => MeTimeColors.whiteSecondary),
            padding:
                MaterialStateProperty.resolveWith((states) => EdgeInsets.zero),
          ),
          const SizedBox(height: 20.0),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                AdsCardWidget(image: "assets/Ads.png"),
                AdsCardWidget(image: "assets/Ads.png"),
                AdsCardWidget(image: "assets/Ads.png"),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MeTimeTag(text: "Recommended", highlighted: true),
                MeTimeTag(text: "Packages"),
                MeTimeTag(text: "Professionals"),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Upcoming",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 10.0),
          const UpcomingCardWidget(
            date: '19',
            month: 'Oct',
            title: 'Basic Pedicure',
            subTitle: 'with Paty',
            time: 'Tuesday, 04:30pm',
          ),
          const SizedBox(height: 20.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Services",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 10.0),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ServiceCardWidget(
                  image: "assets/HaircutRect.png",
                  title: "Haircut",
                  timeToServe: "45 min",
                  price: "\$90",
                ),
                ServiceCardWidget(
                  image: "assets/MassageRect.png",
                  title: "Massage",
                  timeToServe: "70 min",
                  price: "\$60",
                ),
                ServiceCardWidget(
                  image: "assets/HaircutRect.png",
                  title: "Haircut",
                  timeToServe: "45 min",
                  price: "\$90",
                ),
                ServiceCardWidget(
                  image: "assets/MassageRect.png",
                  title: "Massage",
                  timeToServe: "70 min",
                  price: "\$60",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
