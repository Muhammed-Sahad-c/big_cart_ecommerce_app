import 'package:flutter/material.dart';
import 'package:myapp/screens/auth/screen_welcome.dart';
import 'package:myapp/widgets/ui/buttons/primary_button.dart';

class ScreenIntro extends StatelessWidget {
  const ScreenIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/welcome-images/welcome1.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 64,
                    ),
                    Text(
                      "Welcome",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image(
                        height: 50,
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF868889),
                      ),
                    ),
                  ],
                ),
                PrimaryButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenWelcome(),
                      ),
                    );
                  },
                  label: "Get started",
                ),
              ],
            )),
      ),
    );
  }
}
