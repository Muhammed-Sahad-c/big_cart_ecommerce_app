import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
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
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 33,
            backgroundColor: Color(bgColor),
            child: SvgPicture.asset(image),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFF868889),
            ),
          ),
        ],
      ),
    );
  }
}
