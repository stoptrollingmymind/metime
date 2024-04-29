import 'package:flutter/material.dart';

class MeTimeAvatar extends StatelessWidget {
  final String image;

  const MeTimeAvatar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            child: image.isNotEmpty
                ? Image.asset(image, fit: BoxFit.cover)
                : const Icon(Icons.person),
          ),
        ));
  }

}