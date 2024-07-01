import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "4.5",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 8,
        ),
        Icon(
          Icons.star,
          color: Color(0xFFFFC107),
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Color(0xFFFFC107),
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Color(0xFFFFC107),
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Color(0xFFFFC107),
          size: 16,
        ),
        Icon(
          Icons.star_half,
          color: Color(0xFFFFC107),
          size: 16,
        ),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
