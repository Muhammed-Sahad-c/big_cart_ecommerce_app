import 'package:flutter/material.dart';
import 'package:myapp/screens/welcome/screen_intro.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    gotoMain();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image.asset(
            "assets/images/logo.png",
            width: 180.0,
          ),
        ),
      ),
    );
  }

  void gotoMain() async {
    await Future.delayed(
        const Duration(seconds: 3)); // Add a delay of 3 seconds
    if (mounted) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (ctx) => const ScreenIntro(),
        ),
        (Route<dynamic> route) => false,
      );
    }
  }
}
