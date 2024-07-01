import 'package:flutter/material.dart';
import 'package:myapp/screens/screen_categories.dart';
import 'package:myapp/screens/screen_products.dart';
import 'package:myapp/widgets/categories/featured_categories_list.dart';
import 'package:myapp/widgets/products/featured_product_list.dart';
import 'package:myapp/widgets/ui/app_search_bar.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 16,
              ),
              const AppSearchBar(),
              const SizedBox(
                height: 16,
              ),
              //? Categories Head Starts -------------------------------------
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const ScreenCategories(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 18,
                      color: Color(0xFF868889),
                    ),
                  ),
                ],
              ),
              //? Categories Head Ends -------------------------------------
              const SizedBox(
                height: 16,
              ),
              //? Featured Categories Starts -------------------------------------
              FeaturedCategoriesList(),
              //? Featured Categories Ends -------------------------------------
              const SizedBox(
                height: 32,
              ),
              //? Featured Products Head Starts -------------------------------------
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Featured products",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const ScreenProducts(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 18,
                      color: Color(0xFF868889),
                    ),
                  ),
                ],
              ),
              //? Featured Products Head Ends -------------------------------------
              const SizedBox(
                height: 16,
              ),
              //? Featured Product List Starts -------------------------------------
              FeaturedProductList(),
              //? Featured Product List Ends -------------------------------------
            ],
          ),
        ),
      ),
    );
  }
}
