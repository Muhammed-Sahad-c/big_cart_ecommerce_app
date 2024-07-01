import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeaturedCategoryItem extends StatelessWidget {
  const FeaturedCategoryItem({
    super.key,
    required this.bgColor,
    required this.label,
    required this.image,
  });

  final int bgColor;
  final String label;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 26.0,
          backgroundColor: Color(bgColor),
          child: Center(
            child: SvgPicture.asset(image),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Color(0xFF868889),
          ),
        ),
      ],
    );
  }
}
