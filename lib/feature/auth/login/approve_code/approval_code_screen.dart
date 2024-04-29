import 'dart:async';

import 'package:flutter/material.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/constants/metime_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ApprovalCodeScreen extends StatefulWidget {
  final String phone;

  const ApprovalCodeScreen({super.key, required this.phone});
  @override
  _ApprovalCodeScreenState createState() => _ApprovalCodeScreenState();
}

class _ApprovalCodeScreenState extends State<ApprovalCodeScreen> {
  int minutes = 1;
  int seconds = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (timer) {
      setState(() {
        if (minutes == 0 && seconds == 0) {
          timer.cancel();
        } else if (seconds == 0) {
          minutes--;
          seconds = 59;
        } else {
          seconds--;
        }
      });
    });
  }

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
                const SizedBox(height: 80),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Enter code',
                      style: Theme.of(context).textTheme.displayLarge,
                    )),
                const SizedBox(height: 20),
                Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.labelMedium,
                        children: [
                          const TextSpan(
                              text:
                                  'We’ve sent an SMS with an activation code\n to your phone '),
                          TextSpan(
                              text: widget.phone,
                              style: const TextStyle(
                                  color: MeTimeColors.blackPrimary)),
                          const TextSpan(text: '.'),
                        ],
                      ),
                    )),
                const SizedBox(height: 40),
                PinCodeTextField(
                  appContext: context,
                  length: 5,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    fieldOuterPadding:
                        const EdgeInsets.symmetric(horizontal: 10),
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 65,
                    fieldWidth: 57,
                    activeFillColor: MeTimeColors.pinkPrimary,
                    inactiveFillColor: MeTimeColors.stroke,
                    activeColor: MeTimeColors.pinkPrimary,
                    inactiveColor: MeTimeColors.stroke,
                    borderWidth: 1,
                    selectedColor: MeTimeColors.pinkPrimary,
                    selectedFillColor: MeTimeColors.stroke,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  onCompleted: (value) {
                    Navigator.of(context).pushNamed("/home");
                  },
                ),
                const Spacer(),
                Text(
                  'Send code again  $minutes:${seconds.toString().padLeft(2, '0')}',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 60)
              ],
            )));
  }
}
