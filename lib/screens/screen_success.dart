import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/widgets/ui/buttons/primary_button.dart';

class ScreenSuccess extends StatelessWidget {
  const ScreenSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Order Success",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/success-icons/success_shopping_bag.svg',
              ),
              const SizedBox(
                height: 36,
              ),
              const Text(
                "Your order was succesfull !",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "You will get a response with in a few minutes.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF868889),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: PrimaryButton(
          onPressed: () {},
          label: "Track order",
        ),
      ),
    );
  }
}
