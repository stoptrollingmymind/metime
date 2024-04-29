import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/components/text_field.dart';

class CardDetailScreen extends StatelessWidget {
  const CardDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MeTimeLogo(),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Add Card",
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 20),
            MeTimeTextField(
              label: "Cardholder name",
              labelStyle: Theme.of(context).textTheme.labelMedium,
              hint: "Doe John",
              hintStyle: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(height: 20),
            MeTimeTextField(
              label: "Card number",
              labelStyle: Theme.of(context).textTheme.labelMedium,
              hint: "0000 0000 0000 0000",
              hintStyle: Theme.of(context).textTheme.labelSmall,
              postfix: Image.asset("assets/Mastercard.png", scale: 0.7),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                  child: MeTimeTextField(
                    label: "Exp. Date",
                    labelStyle: Theme.of(context).textTheme.labelMedium,
                    hint: "MM/YY",
                    hintStyle: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                const SizedBox(width: 20),
                Flexible(
                  child: MeTimeTextField(
                    label: "CVV",
                    labelStyle: Theme.of(context).textTheme.labelMedium,
                    hint: "123",
                    hintStyle: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 280,
            ),
            MeTimeButton(
              text: 'Add Card',
              primary: true,
              width: 280,
              height: 55,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 90),
          ],
        ),
      ),
    );
  }
}
