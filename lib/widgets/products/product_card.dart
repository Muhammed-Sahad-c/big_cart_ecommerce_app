import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/screens/screen_cart.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.quantity,
    required this.isFavorite,
    required this.image,
  });

  final String name;
  final String price;
  final String quantity;
  final String image;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: isFavorite
                  ? const Icon(
                      Icons.favorite,
                      color: Color(0xFFFE585A),
                    )
                  : const Icon(
                      Icons.favorite_outline,
                      color: Color(0xFF868889),
                    ),
            ),
            Expanded(
              child: Image.asset(
                image,
                height: 100,
                width: 100, // Adjusted height for better fit
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              "\$ $price",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF6CC51D),
              ),
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            Text(
              quantity,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF868889),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Divider(
              color: Color(0xFFEBEBEB),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const ScreenCart(),
                  ),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 15,
                    color: Color(0xFF6CC51D),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Add to cart",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
