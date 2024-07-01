import 'package:flutter/material.dart';

class StarRatingInput extends StatelessWidget {
  const StarRatingInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Color(0xFFFFC107),
          size: 36,
        ),
        SizedBox(
          width: 12,
        ),
        Icon(
          Icons.star,
          color: Color(0xFFFFC107),
          size: 36,
        ),
        SizedBox(
          width: 12,
        ),
        Icon(
          Icons.star,
          color: Color(0xFFFFC107),
          size: 36,
        ),
        SizedBox(
          width: 12,
        ),
        Icon(
          Icons.star,
          color: Color(0xFFFFC107),
          size: 36,
        ),
        SizedBox(
          width: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.white,
          size: 36,
        ),
      ],
    );
  }
}
