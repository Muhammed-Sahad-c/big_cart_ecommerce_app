import 'package:flutter/material.dart';
import 'package:myapp/screens/reviews/screen_write_review.dart';
import 'package:myapp/widgets/review/review_list.dart';

class ScreenReview extends StatelessWidget {
  const ScreenReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Reviews",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const ScreenWriteReview(),
                  ),
                );
              },
              child: const Icon(
                Icons.add_circle_outline,
                size: 24,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              ReviewList(),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
