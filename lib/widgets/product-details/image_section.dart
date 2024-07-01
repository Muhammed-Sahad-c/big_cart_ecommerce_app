import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.containerHeight,
  });

  final double containerHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/product_bg.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      width: double.infinity,
      height: containerHeight,
      child: Image.asset(
        "assets/images/product.png",
      ),
    );
  }
}
