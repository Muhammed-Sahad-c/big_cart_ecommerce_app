import 'package:flutter/material.dart';
import 'package:myapp/widgets/favorites/favorites_products_list.dart';

class ScreenFavorites extends StatelessWidget {
  const ScreenFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Favorites",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
          child: Column(
            children: [
              FavoritesProductsList(),
            ],
          ),
        ),
      ),
    );
  }
}
