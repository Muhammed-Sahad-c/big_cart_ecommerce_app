import 'package:flutter/material.dart';
import 'package:myapp/widgets/checkout/shipping_method_card.dart';

class ShippingMethodList extends StatelessWidget {
  ShippingMethodList({super.key});

  final shippingMethods = [
    {
      "title": "Standard Delivery",
      "description":
          "Order will be delivered between 3 - 4 business days straights to your doorstep.",
      "amount": "3"
    },
    {
      "title": "Next Day Delivery",
      "description":
          "Order will be delivered between 3 - 4 business days straights to your doorstep.",
      "amount": "5"
    },
    {
      "title": "Nominated Delivery",
      "description":
          "Order will be delivered between 3 - 4 business days straights to your doorstep.",
      "amount": "8"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ShippingMethodCard(
          title: shippingMethods[index]["title"]!,
          description: shippingMethods[index]["description"]!,
          amount: shippingMethods[index]["amount"]!,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 18,
        );
      },
      itemCount: shippingMethods.length,
    );
  }
}
