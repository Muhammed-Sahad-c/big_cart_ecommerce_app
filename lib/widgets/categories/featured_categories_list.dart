import 'package:flutter/material.dart';
import 'package:myapp/screens/screen_products.dart';
import 'package:myapp/widgets/categories/featured_category_item.dart';

class FeaturedCategoriesList extends StatelessWidget {
  FeaturedCategoriesList({super.key});

  final List featuredCategories = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78,
      width: double.infinity,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 18,
          childAspectRatio: 1,
        ),
        itemCount: featuredCategories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const ScreenProducts(),
                ),
              );
            },
            child: FeaturedCategoryItem(
              label: featuredCategories[index]['name']! as String,
              image: featuredCategories[index]['image']! as String,
              bgColor: featuredCategories[index]['color']! as int,
            ),
          );
        },
      ),
    );
  }
}
