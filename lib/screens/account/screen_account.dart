import 'package:flutter/material.dart';
import 'package:myapp/widgets/account/account_banner.dart';
import 'package:myapp/widgets/account/account_options.dart';

class ScreenAccount extends StatelessWidget {
  const ScreenAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AccountBanner(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 36,
                ),
                child: Column(
                  children: [
                    //? Account Details Starts -------------------------------------
                    Text(
                      "Olivia Austin",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "oliviaaustin@gmail.com",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF868889),
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    AccountOptions(),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
