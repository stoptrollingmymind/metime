import 'package:flutter/material.dart';
import 'package:metime/components/button.dart';
import 'package:metime/components/logo.dart';
import 'package:metime/constants/metime_colors.dart';
import 'package:metime/feature/service/service_screen.dart';

import 'feature/auth/auth/auth_screen.dart';
import 'feature/auth/login/fill_phone/login_screen.dart';
import 'feature/auth/signup/sign_up_screen.dart';
import 'feature/booking/approval_detail/approval_booking_screen.dart';
import 'feature/booking/booking_list/booking_list_screen.dart';
import 'feature/booking/professional_detail/professional_detail_screen.dart';
import 'feature/booking/professional_detail/unspecified_professional_screen.dart';
import 'feature/checkout/detail/checkout_detail_screen.dart';
import 'feature/checkout/payment_method/detail/card_detail_screen.dart';
import 'feature/home/home_screen.dart';
import 'feature/onboarding/onboarding_screen.dart';
import 'theme/metime_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This components is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeTime',
      theme: MeTimeTheme.meTimeThemeData,
      routes: {
        "/": (context) => const OnboardingScreen(),
        "/auth": (context) => const AuthPage(spaceSize: 120),
        "/auth/login": (context) => const LoginScreen(),
        "/auth/signup": (context) => const SignUpScreen(),
        "/booking/professional/": (context) => const ProfessionalBookingScreen(),
        "/booking/professional/unspecified": (context) =>
            const UnspecifiedProfessionalBookingScreen(),
        "/booking/approve": (context) => const ApprovalBookingScreen(),
        "/booking/checkout": (context) => const BookingCheckoutDetailScreen(),
        "/booking/list": (context) => const BookingListScreen(),
        "/checkout/detail": (context) => const CardDetailScreen(),
        "/service": (context) => const ServiceScreen(),
        "/home": (context) => const HomeScreen(),
      },
    );
  }
}








