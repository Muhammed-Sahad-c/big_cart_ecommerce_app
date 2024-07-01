import 'package:flutter/material.dart';
import 'package:myapp/widgets/products/product_card_sm.dart';

class CartItemsList extends StatelessWidget {
  CartItemsList({super.key});

  final List products = [
    {
      "name": "Pomegranate",
      "price": "2.09",
      "cartQuantity": "4",
      "quantity": "1.50 lbs",
      "image": "assets/images/featured-product-images/pomegranate.png",
    },
    {
      "name": "Fresh Broccoli",
      "cartQuantity": "2",
      "price": "3.00",
      "quantity": "1 kg",
      "image": "assets/images/featured-product-images/broccoli.png",
      "isFavorite": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisExtent: 100,
        crossAxisSpacing: 8,
        mainAxisSpacing: 14,
        childAspectRatio: 1.0,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCardSm(
          name: products[index]["name"]!,
          price: products[index]["price"]!,
          quantity: products[index]["quantity"]!,
          image: products[index]["image"]!,
          cartQuantity: products[index]["cartQuantity"]!,
        );
      },
    );
  }
}
