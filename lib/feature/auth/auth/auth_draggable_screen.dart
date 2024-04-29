import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';
import 'package:metime/feature/auth/auth/auth_screen.dart';

class AuthDraggableHeaderWidget extends StatelessWidget {
  const AuthDraggableHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: MeTimeColors.white,
            ),
            child: const AuthPage(spaceSize: 20));
      },
      expand: false,
    );
  }
}