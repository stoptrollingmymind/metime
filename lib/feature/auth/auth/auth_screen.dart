import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/constants/metime_colors.dart';

class AuthPage extends StatelessWidget {
  final double spaceSize;

  const AuthPage({super.key, required this.spaceSize });

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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hey there!',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Before schedule, please enter\n your account or create one!',
                style: TextStyle(
                    fontSize: 16,
                    color: MeTimeColors.blackTernary
                ),
              ),
              SizedBox(height: spaceSize),
              MeTimeButton(
                width: 270,
                height: 60,
                primary: true,
                onPressed: () {
                  Navigator.of(context).pushNamed("/auth/login");
                },
                child: const Text("Log in")
              ),
              MeTimeButton(
                  width: 270,
                  height: 60,
                  secondary: true,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/auth/signup");
                  },
                  child: const Text("Create Account")
              )
            ],
          ),
        ),
      ),
    );
  }
}