import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/constants/metime_colors.dart';

class PaymentMethodList extends StatelessWidget {
  const PaymentMethodList({super.key});

  @override
  Widget build(BuildContext context) {
    const options = [
      {'image': 'assets/ApplePay.png', 'text': 'Apple Pay', "isCard": false},
      {'image': 'assets/Paypal.png', 'text': 'PayPal', "isCard": false},
      {'image': 'assets/Cash.png', 'text': 'Cash', "isCard": false},
      {
        'image': 'assets/CreditCard.png',
        'text': '7236 xxxx xxxx 2345',
        "isCard": true
      },
    ];

    return Column(
      children: [
        const SizedBox(height: 80),
        for (int i = 0; i < options.length; i++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 45,
                width: 380,
                child: GestureDetector(
                  onTap: () {
                    if (options[i]['isCard']! as bool) {
                      Navigator.pushNamed(context, "/checkout/detail");
                    }
                  },
                  child: Row(
                    children: [
                      Image.asset(options[i]['image']!.toString()),
                      const SizedBox(width: 5),
                      Text(options[i]['text']!.toString()),
                      const Spacer(),
                      if (options[i]['isCard']! as bool)
                        MeTimeButton(
                          onPressed: () {},
                          text: "Remove",
                          textSize: 15,
                          textColor: MeTimeColors.danger,
                          secondary: true,
                        )
                      else
                        const Icon(Icons.arrow_forward_ios, size: 14)
                    ],
                  ),
                ),
              ),
              if (i != options.length - 1) const Divider()
            ],
          ),
      ],
    );
  }
}
