import 'package:flutter/cupertino.dart';

class MeTimeLogo extends StatelessWidget {
  const MeTimeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/Logo.png',
      width: 150,
      height: 150,
    );
  }
}