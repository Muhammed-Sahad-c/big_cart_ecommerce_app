import 'package:flutter/material.dart';
import 'package:myapp/widgets/categories/categories_list.dart';

class ScreenCategories extends StatelessWidget {
  const ScreenCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Categories",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Icon(
              Icons.tune_outlined,
              size: 24,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: CategoriesList(),
    );
  }
}
