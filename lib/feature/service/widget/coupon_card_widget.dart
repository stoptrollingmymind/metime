import 'package:flutter/material.dart';

class CouponCardWidget extends StatelessWidget {
  final String saleText;
  final String couponText;

  const CouponCardWidget(
      {super.key, required this.saleText, required this.couponText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/Sale.png'),
              const SizedBox(
                width: 5,
              ),
              Text(saleText,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .merge(const TextStyle(fontWeight: FontWeight.w700))),
            ],
          ),
          Text(couponText, style: Theme.of(context).textTheme.labelMedium)
        ],
      ),
    );
  }
}
