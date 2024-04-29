import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/util/country_code_helper.dart';

import '../approve_code/approval_code_screen.dart';
import 'widget/country_based_phone_field.dart';
import 'widget/country_picker.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginScreen> {
  String countryCode = '+55';
  String selectedCountry = 'Brazil';
  String submittedPhoneNumber = '';

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
        body: Material(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Log in',
                        style: Theme.of(context).textTheme.displayLarge,
                      )),
                  const SizedBox(height: 20),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Please confirm your country code and \nenter your phone number.',
                        style: Theme.of(context).textTheme.labelMedium,
                      )),
                  const SizedBox(height: 20),
                  CountryPickerWidget(
                      selectedCountry: selectedCountry,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCountry = newValue!;
                          countryCode = getCountryCode(newValue).$1;
                        });
                      }),
                  const SizedBox(height: 20),
                  CountryBasedPhoneField(
                      countryCode: countryCode,
                      onChanged: (value) {
                        setState(() {
                          submittedPhoneNumber = value;
                        });
                      }),
                  const SizedBox(height: 60),
                  MeTimeButton(
                    onPressed: () {
                      var phoneNumber = countryCode + submittedPhoneNumber;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ApprovalCodeScreen(phone: phoneNumber),
                        ),
                      );
                    },
                    text: "Continue",
                    width: 270,
                    height: 55,
                    primary: true,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
