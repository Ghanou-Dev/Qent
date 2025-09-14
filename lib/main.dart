import 'package:flutter/material.dart';
import 'package:qent/pages/home_page.dart';
import 'package:qent/pages/login.dart';
import 'package:qent/pages/register.dart';
import 'package:qent/pages/reset_password.dart';
import 'package:qent/pages/verify_phone_number.dart';
import 'package:qent/pages/on_boarding.dart';

void main() async {
  runApp(const Qent());
}

class Qent extends StatelessWidget {
  const Qent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
      ),
      routes: {
        '/': (context) => const OnBoarding(),
        Login.pageRoute: (context) => Login(),
        Register.pageRoute: (context) => Register(),
        ResetPassword.pageRoute: (context) => ResetPassword(),
        VerifyPhoneNumber.pageRoute: (context) => VerifyPhoneNumber(),
        HomePage.pageRoute: (context) => HomePage(),
      },
    );
  }
}
