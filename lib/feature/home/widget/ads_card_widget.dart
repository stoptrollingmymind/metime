import 'package:flutter/cupertino.dart';

class AdsCardWidget extends StatelessWidget {
  final String image;

  const AdsCardWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10.0),
        width: 315.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ));
  }
}
