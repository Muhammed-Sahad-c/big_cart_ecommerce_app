import 'package:flutter/material.dart';
import 'package:myapp/screens/product/screen_product_details.dart';
import 'package:myapp/widgets/products/product_card.dart';

class FeaturedProductList extends StatelessWidget {
  FeaturedProductList({super.key});

  final List products = [
    {
      "name": "Fresh peach",
      "price": "8.00",
      "quantity": "dozen",
      "image": "assets/images/featured-product-images/peach.png",
      "isFavorite": false,
    },
    {
      "name": "Avacodao",
      "price": "7.00",
      "quantity": "2.0 lbs",
      "image": "assets/images/featured-product-images/avacado.png",
      "isFavorite": true,
    },
    {
      "name": "Black Grapes",
      "price": "7.05",
      "quantity": "5.0 lbs",
      "image": "assets/images/featured-product-images/black-grapes.png",
      "isFavorite": false,
    },
    {
      "name": "Pineapple",
      "price": "9.90",
      "quantity": "1.50 lbs",
      "image": "assets/images/featured-product-images/pineapple.png",
      "isFavorite": true,
    },
    {
      "name": "Pomegranate",
      "price": "2.09",
      "quantity": "1.50 lbs",
      "image": "assets/images/featured-product-images/pomegranate.png",
      "isFavorite": false,
    },
    {
      "name": "Fresh Broccoli",
      "price": "3.00",
      "quantity": "1 kg",
      "image": "assets/images/featured-product-images/broccoli.png",
      "isFavorite": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = MediaQuery.of(context).size.width ~/ 181;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 18,
        crossAxisSpacing: 20,
        childAspectRatio: 1.0,
        mainAxisExtent: 234,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        // Product Cards Starts ----------------------------------------
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const ScreenProductDetails(),
              ),
            );
          },
          child: ProductCard(
            name: products[index]["name"]!,
            price: products[index]["price"],
            quantity: products[index]["quantity"],
            image: products[index]["image"],
            isFavorite: products[index]["isFavorite"],
          ),
        );
        // Product Cards Starts ----------------------------------------
      },
    );
  }
}
