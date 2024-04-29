import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/constants/metime_colors.dart';
import 'package:metime/feature/checkout/payment_method/list/payment_method_screen.dart';

class BookingCheckoutDetailScreen extends StatelessWidget {
  const BookingCheckoutDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Checkout",
              style: Theme.of(context).textTheme.displayMedium),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 40),
            Text(
              'Please check the details and\n confirm your appointment',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            SizedBox(
              width: 380,
              child: Column(
                children: [
                  _buildDetailRow(context, 'Date', 'Tuesday, 19     04:30pm'),
                  _buildDetailRow(
                      context, 'Service', 'Basic pedicure with Paty'),
                  _buildDetailRow(
                      context, 'Location', '8502 Preston Rd. Inglewood',
                      isUnderlined: true, isBold: true),
                  _buildPayment(context),
                  _buildDetailRow(context, 'Total', '\$35', isBold: true),
                ],
              ),
            ),
            const SizedBox(height: 340),
            MeTimeButton(
                text: "Book",
                primary: true,
                width: 270,
                height: 60,
                onPressed: () {
                  Navigator.pushNamed(context, "/booking/list");
                })
          ],
        ));
  }

  Widget _buildDetailRow(context, String leftText, String rightText,
      {bool isUnderlined = false, isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Expanded(
            child: Text(
              rightText,
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: isBold ? FontWeight.bold : null,
                  color: MeTimeColors.blackSecondary,
                  decoration: isUnderlined ? TextDecoration.underline : null),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPayment(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Payment",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const PaymentInfoWidget(
              iconName: "assets/Mastercard.png", textAfterIcon: "**** 2345"),
        ],
      ),
    );
  }
}

class PaymentInfoWidget extends StatelessWidget {
  final String iconName;
  final String textAfterIcon;

  const PaymentInfoWidget(
      {super.key, required this.iconName, required this.textAfterIcon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return const DetailPaymentMethodsScreen();
          },
        );
      },
      child: Row(
        children: [
          Image.asset(iconName),
          const SizedBox(width: 10),
          Text(textAfterIcon,
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontSize: 16,
                color: MeTimeColors.blackSecondary,
              ))
        ],
      ),
    );
  }
}
