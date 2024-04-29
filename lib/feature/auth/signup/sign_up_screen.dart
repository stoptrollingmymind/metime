import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/components/text_field.dart';
import 'package:metime/constants/metime_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Sign up",
                    style: Theme.of(context).textTheme.displayLarge),
              ),
              const SizedBox(height: 25),
              MeTimeTextField(
                label: "Full Name",
                labelStyle: Theme.of(context).textTheme.labelMedium,
                hint: "Enter your full name",
                hintStyle: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 15),
              MeTimeTextField(
                label: "Email",
                labelStyle: Theme.of(context).textTheme.labelMedium,
                hint: "Enter your email",
                hintStyle: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 15),
              MeTimeTextField(
                label: "Password",
                labelStyle: Theme.of(context).textTheme.labelMedium,
                hint: "Enter your password",
                hintStyle: Theme.of(context).textTheme.labelSmall,
                sensitive: true,
              ),
              const SizedBox(height: 15),
              MeTimeTextField(
                label: "Phone Number",
                labelStyle: Theme.of(context).textTheme.labelMedium,
                hint: "+7 900 901 90 90",
                hintStyle: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 60),
              MeTimeButton(
                  width: 270,
                  primary: true,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/home");
                  },
                  text: "Register"),
              const SizedBox(height: 25),
              Text(
                "Already have an account",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 10),
              MeTimeButton(
                  width: 270,
                  height: 60,
                  borderColor: MeTimeColors.stroke,
                  secondary: true,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/auth/login");
                  },
                  text: "Log In")
            ],
          ),
        ),
      ),
    );
  }
}
