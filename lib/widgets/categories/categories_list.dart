import 'package:flutter/material.dart';
import 'package:myapp/screens/screen_products.dart';
import 'package:myapp/widgets/categories/category_item.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});

  final List categories = [
    {
      "name": "Vegetables",
      "color": 0xFFE6F2EA,
      "image": "assets/images/category-items/vegetables.svg",
    },
    {
      "name": "Fruits",
      "color": 0xFFFFE9E5,
      "image": "assets/images/category-items/fruits.svg",
    },
    {
      "name": "Beverages",
      "color": 0xFFFFF6E3,
      "image": "assets/images/category-items/beverages.svg",
    },
    {
      "name": "Groceries",
      "color": 0xFFF3EFFA,
      "image": "assets/images/category-items/groceries.svg",
    },
    {
      "name": "Edible oil",
      "color": 0xFFDCF4F5,
      "image": "assets/images/category-items/ediable-oil.svg",
    },
    {
      "name": "Edible oil",
      "color": 0xFFFFE8F2,
      "image": "assets/images/category-items/house-holds.svg",
    },
    {
      "name": "Baby care",
      "color": 0xFFD2EFFF,
      "image": "assets/images/category-items/baby-care.svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = MediaQuery.of(context).size.width ~/ 120;

    return GridView.builder(
      padding: const EdgeInsets.symmetric(
        vertical: 21,
        horizontal: 16,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 120,
        crossAxisSpacing: 10,
        mainAxisSpacing: 14,
        crossAxisCount: crossAxisCount,
      ),
      itemCount: categories.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const ScreenProducts(),
              ),
            );
          },
          child: CategoryItem(
            label: categories[index]['name']! as String,
            image: categories[index]['image']! as String,
            bgColor: categories[index]['color']! as int,
          ),
        );
      },
    );
  }
}
