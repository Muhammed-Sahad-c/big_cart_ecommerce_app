import 'package:flutter/material.dart';
import 'package:myapp/widgets/review/review_card.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const ReviewCard();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 17,
        );
      },
      itemCount: 5,
    );
  }
}
