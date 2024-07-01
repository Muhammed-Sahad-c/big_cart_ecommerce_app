import 'package:flutter/material.dart';
import 'package:myapp/widgets/products/products_list.dart';

class ScreenProducts extends StatelessWidget {
  const ScreenProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Products",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        child: ProductList(),
      ),
    );
  }
}
