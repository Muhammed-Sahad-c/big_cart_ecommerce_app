import 'package:flutter/material.dart';
import 'package:myapp/screens/checkout/screen_shipping_method.dart';
import 'package:myapp/widgets/ui/buttons/primary_button.dart';

class CartSummary extends StatelessWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: IntrinsicHeight(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 32,
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xFF868889),
                        ),
                      ),
                      Text(
                        "\$8.88",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xFF868889),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xFF868889),
                        ),
                      ),
                      Text(
                        "\$8.88",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xFF868889),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Color(0xFFEBEBEB),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PrimaryButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const ScreenShippingMethod(),
                        ),
                      );
                    },
                    label: "Checkout",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
