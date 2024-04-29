import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';

import 'widget/payment_dragable_header.dart';
import 'widget/payment_static_list.dart';

class DetailPaymentMethodsScreen extends StatelessWidget {
  const DetailPaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DraggableScrollableSheet(
          initialChildSize: 0.7,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MeTimeColors.white,
                ),
                child: const PaymentMethodList());
          },
          expand: false,
        ),
        const Positioned(child: PaymentDraggableHeaderWidget()),
      ],
    );
  }
}
