import 'package:fitness_app/ui/login/login_page.dart';
import 'package:fitness_app/widget/rounded_button_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../login/login_page.dart';

class WelcomePage extends StatelessWidget {
  static String route = "/";

  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset('assets/images/il_fitness_logo.svg')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: RoundedButtonPrimary(
          width: double.infinity,
          borderRadius: BorderRadius.circular(90),
          child: const Text(
            "Get Started",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          onPressed: () {
            Navigator.pushNamed(context, LoginPage.route);
          },
        ),
      ),
    );
  }
}
