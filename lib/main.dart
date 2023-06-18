import 'package:bank_sha/ui/pages/onboarding_page.dart';
import 'package:bank_sha/ui/pages/set_id_card_page.dart';
import 'package:bank_sha/ui/pages/set_profile_page.dart';
import 'package:bank_sha/ui/pages/signin_page.dart';
import 'package:bank_sha/ui/pages/signup_page.dart';
import 'package:bank_sha/ui/pages/splash_page.dart';
import 'package:bank_sha/ui/pages/success_signup.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/set-profile': (context) => const SetProfilePage(),
        '/set-id-card' :(context) => const SetIdCardPage(),
        '/success-sign-up' :(context) => const SuccessSignUpPage(),
      },
    );
  }
}
