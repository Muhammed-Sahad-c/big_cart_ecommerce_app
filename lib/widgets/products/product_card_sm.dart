import 'package:flutter/material.dart';

class ProductCardSm extends StatelessWidget {
  const ProductCardSm({
    super.key,
    required this.name,
    required this.cartQuantity,
    required this.quantity,
    required this.image,
    required this.price,
  });

  final String name;
  final String cartQuantity;
  final String quantity;
  final String image;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Colors.white,
      ),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.transparent,
            child: Center(
              child: Image.asset(
                image,
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\$ $price x $cartQuantity",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6CC51D),
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                quantity,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF868889),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
