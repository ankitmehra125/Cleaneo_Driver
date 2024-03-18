import 'dart:async';
import 'package:cleaneo_driver_app/Screens/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const WelcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: 'logoTag',
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: SvgPicture.asset("assets/splash.svg", fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
