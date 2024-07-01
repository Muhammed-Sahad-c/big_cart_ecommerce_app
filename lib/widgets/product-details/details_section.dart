import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/screens/reviews/screen_review.dart';
import 'package:myapp/widgets/rating/rating.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$22.2",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF28B446),
                ),
              ),
              Icon(
                Icons.favorite_border_outlined,
                color: Color(0xFF868889),
                size: 20,
              ),
            ],
          ),
          const Text(
            "Organic Lemons",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            "1.50 lbs",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF868889),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const ScreenReview(),
                ),
              );
            },
            child: const Row(
              children: [
                Rating(),
                Text(
                  "(89 Reviews)",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF868889),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing ",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF868889),
            ),
          ),
        ],
      ),
    );
  }
}
