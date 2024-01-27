import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portofolio/utils/constants.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<StatefulWidget> createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlack,
      body: Center(
        child: Lottie.asset(
          'assets/anim/loading.json',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}