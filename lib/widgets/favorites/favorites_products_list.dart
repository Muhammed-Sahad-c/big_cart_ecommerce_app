import 'package:flutter/material.dart';
import 'package:myapp/widgets/products/product_card_sm.dart';

class FavoritesProductsList extends StatelessWidget {
  FavoritesProductsList({super.key});

  final List products = [
    {
      "name": "Avacodao",
      "cartQuantity": "2",
      "quantity": "2.0 lbs",
      "image": "assets/images/featured-product-images/avacado.png",
      "price": "7.00"
    },
    {
      "name": "Pineapple",
      "cartQuantity": "4",
      "quantity": "1.50 lbs",
      "image": "assets/images/featured-product-images/pineapple.png",
      "price": "9.00"
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
          image: products[index]["image"],
          cartQuantity: products[index]["cartQuantity"]!,
        );
      },
    );
  }
}
