import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodCards extends StatelessWidget {
  const PaymentMethodCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/payment-method-icons/paypal.svg',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Paypal",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF868889),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/payment-method-icons/credit-card.svg',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Credit card",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF868889),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/payment-method-icons/apple-pay.svg',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Apple pay",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF868889),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
    //? Payment Mehtods Ends -------------------------------------
  }
}
