import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';

class PaymentDraggableHeaderWidget extends StatelessWidget {
  const PaymentDraggableHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: MeTimeColors.white,
        ),
        height: 64,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(width: 70),
              const Text('Add payment method',
                  style: TextStyle(
                      fontSize: 20, color: MeTimeColors.blackPrimary)),
              const SizedBox(width: 48.0),
            ],
          ),
          const Divider()
        ]));
  }
}
