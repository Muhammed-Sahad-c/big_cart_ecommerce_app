import 'package:flutter/material.dart';
import 'package:myapp/widgets/cart/cart_items_list.dart';
import 'package:myapp/widgets/cart/cart_summary.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Shopping cart",
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
              CartItemsList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CartSummary(),
    );
  }
}
